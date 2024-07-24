import 'package:flutter/material.dart';
import 'package:portfolio_webapp/widgets/form.dart';
import 'package:responsive_builder/responsive_builder.dart';

class Contact extends StatefulWidget {
  const Contact({super.key});

  @override
  State<Contact> createState() => _ContactState();
}

class _ContactState extends State<Contact> {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      mobile: (p0) {
        return mobileContact();
      },
      desktop: (p0) {
        return desktopContact();
      },
    );
  }
}

Widget mobileContact() {
  return Container(
      height: 600,
      width: double.infinity,
      decoration: const BoxDecoration(
        gradient: LinearGradient(colors: [
          Color.fromARGB(255, 16, 70, 124),
          Color.fromARGB(255, 10, 120, 210)
        ], begin: Alignment.topLeft, end: Alignment.bottomRight),
      ),
      child: Column(
        children: [
          const SizedBox(
            height: 40,
          ),
          Container(
            width: 250,
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 255, 255, 255),
              borderRadius: BorderRadius.circular(40),
            ),
            child: const Text("Contact",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 30,
                    color: Colors.blue,
                    fontWeight: FontWeight.bold)),
          ),
          const SizedBox(
            height: 50,
          ),
          Container(
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(60)),
            child: Container(
              child: Container(
                child: const Forms(),
              ),
            ),
          )
        ],
      ));
}

Widget desktopContact() {
  return Container(
      height: 580,
      width: double.infinity,
      decoration: const BoxDecoration(
        gradient: LinearGradient(colors: [
          Color.fromARGB(255, 16, 70, 124),
          Color.fromARGB(255, 10, 120, 210)
        ], begin: Alignment.topLeft, end: Alignment.bottomRight),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const SizedBox(
            height: 40,
          ),
          Container(
            width: 250,
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 255, 255, 255),
              borderRadius: BorderRadius.circular(40),
            ),
            child: const Text("Contact",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 30,
                    color: Colors.blue,
                    fontWeight: FontWeight.bold)),
          ),
          const SizedBox(
            height: 50,
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 150),
            padding: const EdgeInsets.symmetric(horizontal: 20),
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(60)),
            child: Container(
              child: Container(
                margin: const EdgeInsets.symmetric(horizontal: 100),
                child: const Forms(),
              ),
            ),
          )
        ],
      ));
}
