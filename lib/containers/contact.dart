import 'package:flutter/material.dart';

import 'package:portfolio_webapp/widgets/contact_social.dart';
import 'package:portfolio_webapp/widgets/mailcomp.dart';
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
    // height: 300,
    width: double.infinity,
    decoration: const BoxDecoration(
      gradient: LinearGradient(
        colors: [
          Color.fromARGB(255, 16, 70, 124),
          Color.fromARGB(255, 10, 120, 210),
        ],
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
      ),
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const SizedBox(height: 40),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Text(
            "C O N T A C T",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 30,
              color: Colors.white.withOpacity(0.8),
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
        const SizedBox(height: 30),
        const Text(
          "Connect with me on Socials",
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 18,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 20),
        const FooterIcons(),
        const SizedBox(height: 10),
        const MailComponent(),
        const SizedBox(height: 20),
      ],
    ),
  );
}

Widget desktopContact() {
  return Container(
      height: 550,
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
          
            child: Text(
              "C O N T A C T",
            
              style: TextStyle(
                fontSize: 42,
                color:
                    const Color.fromARGB(255, 255, 255, 255).withOpacity(0.6),
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          const SizedBox(
            width: double.maxFinite,
        
            child: Text("Connect with me on Socials",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 24,
                    color: Color.fromARGB(255, 255, 255, 255),
                    fontWeight: FontWeight.bold)),
          ),
          const SizedBox(height: 30),
          const FooterIcons(),
          const SizedBox(height: 30),
          const MailComponent(),
        ],
      ));
}
