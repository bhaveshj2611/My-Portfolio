import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:portfolio_webapp/widgets/avatar.dart';
import 'package:portfolio_webapp/widgets/front_socials.dart';
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
  return Column(
    children: [
      Container(
        child: const Column(
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
                    fontSize: 50,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                'Flutter Developer',
                style: TextStyle(color: Colors.white, fontSize: 25),
              ),
              SizedBox(
                height: 10,
              ),
              Socials(),
            ]),
      ),
      const SizedBox(
        height: 50,
      ),
      // Container(
      //   margin: const EdgeInsets.all(0),
      //   padding: const EdgeInsets.all(10),
      //   decoration: BoxDecoration(
      //       shape: BoxShape.circle,
      //       border: Border.all(color: Colors.blue, width: 3)),
      //   child: const CircleAvatar(
      //     foregroundImage: AssetImage(profile2),
      //     backgroundColor: Color.fromARGB(255, 255, 255, 255),
      //     radius: 120,
      //   ),
      // ),
      // const SizedBox(
      //   height: 50,
      // ),
    ],
  );
}

Widget desktopMainContainer() {
  return Row(
    crossAxisAlignment: CrossAxisAlignment.center,
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      const Avatar(),
      SizedBox(
        width: 600,
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const Text(
                "Hey!, Myself ",
                style: TextStyle(
                    fontSize: 15,
                    color: Color.fromARGB(255, 152, 214, 255),
                    fontWeight: FontWeight.w800),
              ),
              const Text(
                "Bhavesh Joshi",
                style: TextStyle(
                    fontSize: 50,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
              AnimatedTextKit(
                animatedTexts: [
                  TypewriterAnimatedText(
                    'Flutter Developer',
                    textStyle: const TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                      fontWeight: FontWeight.w500,
                    ),
                    speed: const Duration(milliseconds: 150),
                  ),
                  TypewriterAnimatedText(
                    'CSE Undergrad',
                    textStyle: const TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                      fontWeight: FontWeight.w500,
                    ),
                    speed: const Duration(milliseconds: 150),
                  ),
                  TypewriterAnimatedText(
                    'Coding Enthusiast',
                    textStyle: const TextStyle(
                      color: Colors.white,
                      fontSize: 25.0,
                      fontWeight: FontWeight.w500,
                    ),
                    speed: const Duration(milliseconds: 150),
                  ),
                ],
                totalRepeatCount: 10,
                pause: const Duration(milliseconds: 1000),
                displayFullTextOnTap: true,
              ),
              const SizedBox(
                height: 10,
              ),
              const Socials(),
            ]),
      ),
    ],
  );
}
