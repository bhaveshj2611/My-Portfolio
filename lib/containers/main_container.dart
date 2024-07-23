
import 'package:flutter/material.dart';

import 'package:portfolio_webapp/widgets/animatedText.dart';
import 'package:portfolio_webapp/widgets/avatar.dart';
import 'package:portfolio_webapp/widgets/download_cv.dart';
import 'package:responsive_builder/responsive_builder.dart';

class MainContainer extends StatefulWidget {
  const MainContainer({super.key});

  @override
  State<MainContainer> createState() => _MainContainerState();
}

class _MainContainerState extends State<MainContainer> {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      mobile: (p0) {
        return mobileMainContainer();
      },
      desktop: (p0) {
        return desktopMainContainer();
      },
    );
  }
}

Widget mobileMainContainer() {
  return const Padding(
    padding: EdgeInsets.all(8.0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(
          "Hey!, Myself ",
          style: TextStyle(
              fontSize: 15,
              color: Color.fromARGB(255, 152, 214, 255),
              fontWeight: FontWeight.w800),
        ),
        Text(
          "Bhavesh Joshi",
          style: TextStyle(
              fontSize: 40, 
              color: Colors.white,
              fontWeight: FontWeight.bold),
        ),
        TypewriterText(
          texts: [
            'Flutter Developer',
            'CSE Undergrad',
            'Full-stack App Dev',
            'Backend Enthusiast',
            'Problem Solver',
            'Adaptable Learner'
          ],
          textStyle: TextStyle(
            color: Colors.white,
            fontSize: 25,
            fontWeight: FontWeight.w500,
          ),
        ),
        SizedBox(
          height: 30,
        ),
        Socials(),
        SizedBox(
          height: 20,
        ),
      ],
    ),
  );
}

Widget desktopMainContainer() {
  return const Row(
    crossAxisAlignment: CrossAxisAlignment.center,
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Avatar(),
      SizedBox(
        width: 600,
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                "Hey! My Name is ",
                style: TextStyle(
                    fontSize: 15,
                    color: Color.fromARGB(255, 152, 214, 255),
                    fontWeight: FontWeight.w800),
              ),
              Text(
                "Bhavesh Joshi",
                style: TextStyle(
                    fontSize: 50,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
              TypewriterText(
                texts: [
                  'Flutter Developer',
                  'CSE Undergrad',
                  'Full-stack App Dev',
                  'Backend Enthusiast',
                  'Problem Solver',
                  'Adaptable Learner'
                ],
                textStyle: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(
                height: 24,
              ),
              Socials(),
            ]),
      ),
    ],
  );
}
