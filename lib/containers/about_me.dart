import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../utils/constants.dart';

class AboutMe extends StatefulWidget {
  const AboutMe({super.key});

  @override
  State<AboutMe> createState() => _AboutMeState();
}

class _AboutMeState extends State<AboutMe> {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      mobile: (p0) {
        return mobileAbout();
      },
      desktop: (p0) {
        return desktopAbout();
      },
    );
  }
}

Widget mobileAbout() {
  return Container(
      decoration: const BoxDecoration(
          gradient: LinearGradient(colors: [
        Colors.white,
        Colors.white10,
      ])),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const SizedBox(
            height: 40,
          ),
          Container(
            width: 250,
            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.circular(40),
            ),
            child: const Text("About Me",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 30,
                    color: Colors.white,
                    fontWeight: FontWeight.bold)),
          ),
          const SizedBox(
            height: 50,
          ),
          Container(
            width: 700,
            color: const Color.fromARGB(48, 33, 149, 243),
            padding: const EdgeInsets.all(20),
            child: Text(
              aboutMe,
              textAlign: TextAlign.justify,
              style: const TextStyle(fontWeight: FontWeight.w500),
            ),
          ),
          const SizedBox(
            height: 30,
          )
        ],
      ));
}

Widget desktopAbout() {
  return Container(
      height: 600,
      decoration: const BoxDecoration(
          gradient: LinearGradient(colors: [
        Colors.white,
        Colors.white10,
      ])),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const SizedBox(
            height: 40,
          ),
          Container(
            width: 250,
            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.circular(40),
            ),
            child: const Text("About Me",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 30,
                    color: Colors.white,
                    fontWeight: FontWeight.bold)),
          ),
          const SizedBox(
            height: 50,
          ),
          Container(
            height: 400,
            width: double.infinity,
            color: const Color.fromARGB(48, 33, 149, 243),
            child: Wrap(
              children: [
                Container(
                  width: 700,
                  padding: const EdgeInsets.all(20),
                  child: Text(
                    aboutMe,
                    textAlign: TextAlign.justify,
                    style: const TextStyle(fontWeight: FontWeight.w500),
                  ),
                ),
                const SizedBox(
                  width: 100,
                ),
                if (w! > 1160)
                  Container(
                    height: 350,
                    width: 350,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(aboutFlutter), fit: BoxFit.cover),
                    ),
                  ),
              ],
            ),
          )
        ],
      ));
}
