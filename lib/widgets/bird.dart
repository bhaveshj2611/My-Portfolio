import 'package:flutter/material.dart';
import 'package:portfolio_webapp/utils/constants.dart';

class Bird extends StatefulWidget {
  const Bird({super.key});

  @override
  State<Bird> createState() => _BirdState();
}

class _BirdState extends State<Bird> {
  @override
  Widget build(BuildContext context) {
    return Container(
      // duration: const Duration(milliseconds: 300),
      // padding: const EdgeInsets.all(10),
      margin: const EdgeInsets.all(20),
      height: 350,
      width: 350,
      decoration: const BoxDecoration(
        image:
            DecorationImage(image: AssetImage(aboutFlutter), fit: BoxFit.cover),
      ),
    );
  }
}
