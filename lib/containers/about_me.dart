import 'package:flutter/material.dart';
import 'package:portfolio_webapp/widgets/bird.dart';
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
          Card(
            borderOnForeground: true,
            shape: const BeveledRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(30))),
            surfaceTintColor: Colors.white,
            color: const Color.fromARGB(255, 197, 231, 255),
            elevation: 10,
            child: Container(
              width: 700,
              // color: const Color.fromARGB(48, 33, 149, 243),
              padding: const EdgeInsets.all(20),
              child: Text(
                aboutMe,
                textAlign: TextAlign.justify,
                style: const TextStyle(fontWeight: FontWeight.w500),
              ),
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
          Card(
            shape: const BeveledRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(30))),
            surfaceTintColor: Colors.white,
            color: const Color.fromARGB(255, 255, 255, 255),
            elevation: 20,
            child: Wrap(
              alignment: WrapAlignment.spaceEvenly,
              children: [
                Container(
                  width: 700,
                  padding: const EdgeInsets.all(30),
                  child: Center(
                    child: Text(
                      aboutMe,
                      textAlign: TextAlign.justify,
                      style: const TextStyle(fontWeight: FontWeight.w500),
                    ),
                  ),
                ),
                // const SizedBox(
                //   width: 50,
                // ),
                if (w! > 1160) const Bird(),
              ],
            ),
          )
        ],
      ));
}
