import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Forms extends StatefulWidget {
  const Forms({super.key});

  @override
  State<Forms> createState() => _FormsState();
}

class _FormsState extends State<Forms> {
  final formKey = GlobalKey<FormState>();
  var name = '';

  var email = '';

  var message = '';

  void sendMessage() async {
    if (formKey.currentState!.validate()) {
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
        behavior: SnackBarBehavior.floating,
        backgroundColor: Color.fromARGB(255, 0, 115, 209),
        content: Text(
          'Message Sent',
          style: TextStyle(color: Colors.white),
        ),
        elevation: 2,
        shape: StadiumBorder(),
        padding: EdgeInsets.all(20),
        margin: EdgeInsets.all(20),
      ));
      formKey.currentState!.save();
      formKey.currentState!.reset();

      await FirebaseFirestore.instance.collection('message').doc(name).set({
        'Name': name,
        'Email': email,
        'Message': message,
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Column(children: [
        Container(
          margin: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            border: Border.all(
                width: 2, color: const Color.fromARGB(255, 0, 33, 61)),
            color: Colors.white,
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              decoration: const InputDecoration(label: Text('Enter Name')),
              validator: (value) {
                if (value!.trim().isEmpty || value.trim().length < 2) {
                  return 'Please enter valid Name';
                }
                return null;
              },
              onSaved: (value) {
                name = value!;
              },
            ),
          ),
        ),
        Container(
          margin: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            border: Border.all(
                width: 2, color: const Color.fromARGB(255, 0, 33, 61)),
            color: Colors.white,
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              keyboardType: TextInputType.emailAddress,
              decoration: const InputDecoration(label: Text('Enter Email')),
              validator: (value) {
                if (value!.trim().isEmpty || !value.contains('@')) {
                  return 'Please enter valid Email Address';
                }
                return null;
              },
              onSaved: (value) {
                email = value!;
              },
            ),
          ),
        ),
        Container(
          margin: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            border: Border.all(
                width: 2, color: const Color.fromARGB(255, 0, 33, 61)),
            color: Colors.white,
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              maxLength: 100,
              decoration:
                  const InputDecoration(label: Text('Enter Your Message')),
              validator: (value) {
                if (value!.trim().isEmpty) {
                  return 'Please enter any message';
                }
                return null;
              },
              onSaved: (value) {
                message = value!;
              },
            ),
          ),
        ),
        const SizedBox(
          height: 30,
        ),
        ElevatedButton.icon(
            icon: const Icon(Icons.send),
            onPressed: sendMessage,
            label: const Text('Send Message')),
        const SizedBox(
          height: 20,
        )
      ]),
    );
  }
}
