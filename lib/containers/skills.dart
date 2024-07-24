import 'package:flutter/material.dart';
import 'package:portfolio_webapp/widgets/techstack_logo.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../utils/constants.dart';

class Skills extends StatefulWidget {
  const Skills({super.key});

  @override
  State<Skills> createState() => _SkillsState();
}

class _SkillsState extends State<Skills> {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      mobile: (p0) {
        return mobileSkills();
      },
      desktop: (p0) {
        return desktopSkills();
      },
    );
  }
}

Widget mobileSkills() {
  return Container(
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
            child: const Text("TechStack",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 30,
                    color: Colors.blue,
                    fontWeight: FontWeight.bold)),
          ),
          const SizedBox(
            height: 80,
          ),
          Container(
            padding: const EdgeInsets.all(10),
            decoration: const BoxDecoration(
              color: Colors.white,
            ),
            child: const Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                    width: double.infinity,
                    child: Wrap(
                      alignment: WrapAlignment.center,
                      spacing: 20,
                      runSpacing: 40,
                      children: [
                        SkillLogo(
                          logoName: c,
                        ),
                        SkillLogo(
                          logoName: cpp,
                        ),
                        SkillLogo(
                          logoName: java,
                        ),
                        SkillLogo(
                          logoName: html,
                        ),
                        SkillLogo(
                          logoName: css,
                        ),
                        SkillLogo(
                          logoName: git,
                        ),
                        SkillLogo(
                          logoName: ghub,
                        ),
                        SkillLogo(
                          logoName: flutter,
                        ),
                        SkillLogo(
                          logoName: dart,
                        ),
                        SkillLogo(
                          logoName: firebase,
                        ),
                        SkillLogo(
                          logoName: riverpod,
                        ),
                        SkillLogo(
                          logoName: api,
                        ),
                        SkillLogo(
                          logoName: mysql,
                        ),
                        SkillLogo(
                          logoName: canva,
                        ),
                      ],
                    )),
              ],
            ),
          ),
          const SizedBox(
            height: 40,
          ),
        ],
      ));
}

Widget desktopSkills() {
  return Container(
      height: 700,
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
            child: const Text("TechStack",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 30,
                    color: Colors.blue,
                    fontWeight: FontWeight.bold)),
          ),
          const SizedBox(
            height: 80,
          ),
          Container(
            height: 500,
            width: 1100,
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(100)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                    width: double.infinity,
                    margin: const EdgeInsets.symmetric(horizontal: 100),
                    child: const Wrap(
                      alignment: WrapAlignment.center,
                      spacing: 20,
                      runSpacing: 40,
                      children: [
                        SkillLogo(
                          logoName: c,
                        ),
                        SkillLogo(
                          logoName: cpp,
                        ),
                        SkillLogo(
                          logoName: java,
                        ),
                        SkillLogo(
                          logoName: html,
                        ),
                        SkillLogo(
                          logoName: css,
                        ),
                        SkillLogo(
                          logoName: git,
                        ),
                        SkillLogo(
                          logoName: ghub,
                        ),
                        SkillLogo(
                          logoName: flutter,
                        ),
                        SkillLogo(
                          logoName: dart,
                        ),
                        SkillLogo(
                          logoName: firebase,
                        ),
                        SkillLogo(
                          logoName: riverpod,
                        ),
                        SkillLogo(
                          logoName: api,
                        ),
                        SkillLogo(
                          logoName: mysql,
                        ),
                        SkillLogo(
                          logoName: canva,
                        ),
                      ],
                    )),
              ],
            ),
          ),
          const SizedBox(
            height: 30,
          )
        ],
      ));
}
