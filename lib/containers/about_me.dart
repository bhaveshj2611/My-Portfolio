import 'package:flutter/material.dart';
// import 'package:portfolio_webapp/widgets/bird.dart';
import 'package:portfolio_webapp/widgets/stats.dart';
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
        return mobileAbout(context);
      },
      desktop: (p0) {
        return desktopAbout(context);
      },
    );
  }
}

Widget mobileAbout(BuildContext context) {
  return Container(
    color: Theme.of(context).colorScheme.background,
    padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const SizedBox(height: 20),
        const SizedBox(
          width: double.maxFinite,
          // color: Colors.blue[50],
          child: Text(
            "A B O U T",
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 32,
                color: Color.fromARGB(255, 0, 60, 110),
                fontWeight: FontWeight.bold),
          ),
        ),
        const SizedBox(height: 30),
        Container(
          child: const Padding(
            padding: EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  aboutMeParagraph1,
                  textAlign: TextAlign.justify,
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
                ),
                SizedBox(height: 16),
                Text(
                  aboutMeParagraph2,
                  textAlign: TextAlign.justify,
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
                ),
                SizedBox(height: 16),
                Text(
                  aboutMeParagraph3,
                  textAlign: TextAlign.justify,
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
                ),
                SizedBox(height: 16),
                Text(
                  aboutMeParagraph4,
                  textAlign: TextAlign.justify,
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
                ),
              ],
            ),
          ),
        ),
        const SizedBox(height: 30),
        const Stats(),
      ],
    ),
  );
}

Widget desktopAbout(BuildContext context) {
  double w = MediaQuery.of(context).size.width;
  return Container(
      height: 600,
      color: Theme.of(context).colorScheme.background,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          // const SizedBox(
          //   height: 40,
          // ),
          Stack(
            children: [
              Container(
                padding: const EdgeInsets.only(right: 32),
                child: Align(
                  alignment: Alignment.topRight,
                  child: Text(
                    "ABOUT",
                    // textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 142,
                      color: const Color.fromARGB(255, 5, 143, 255)
                          .withOpacity(0.4),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              // const SizedBox(
              //   height: 50,
              // ),
              // Container(
              //   width: 250,
              //   decoration: BoxDecoration(
              //     color: const Color.fromARGB(255, 221, 240, 255),
              //     borderRadius: BorderRadius.circular(40),
              //   ),
              //   child: const Text("open to opportunities",
              //       textAlign: TextAlign.center,
              //       style: TextStyle(
              //         fontSize: 14,
              //         color: Colors.blue,
              //       )),
              // ),
              Column(
                children: [
                  const SizedBox(height: 130),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Wrap(
                        // alignment: WrapAlignment.spaceEvenly,
                        children: [
                          Container(
                            width: w * 0.5,
                            // color: Colors.red,
                            padding: const EdgeInsets.symmetric(
                                horizontal: 24, vertical: 0),
                            child: const Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  aboutMeParagraph1,
                                  // textAlign: TextAlign.justify,

                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500),
                                ),
                                SizedBox(height: 16),
                                Text(
                                  aboutMeParagraph2,
                                  // textAlign: TextAlign.justify,
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500),
                                ),
                                SizedBox(height: 16),
                                Text(
                                  aboutMeParagraph3,
                                  // textAlign: TextAlign.justify,
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500),
                                ),
                                SizedBox(height: 16),
                                Text(
                                  aboutMeParagraph4,
                                  // textAlign: TextAlign.justify,
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      const Stats(),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ],
      ));
}
