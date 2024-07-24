import 'package:flutter/material.dart';
import 'package:portfolio_webapp/widgets/project.dart';

import 'package:responsive_builder/responsive_builder.dart';

import '../utils/constants.dart';

class Projects extends StatefulWidget {
  const Projects({super.key});

  @override
  State<Projects> createState() => _ProjectsState();
}

class _ProjectsState extends State<Projects> {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      mobile: (p0) {
        return mobileProjects();
      },
      desktop: (p0) {
        return desktopProjects();
      },
    );
  }
}

Widget mobileProjects() {
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
            child: const Text("Projects",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 30,
                    color: Colors.white,
                    fontWeight: FontWeight.bold)),
          ),
          const SizedBox(
            height: 100,
          ),
          ProjectList(
            projectImage: moxshow,
            projectText: 'MoxShow - A Movies/Shows Guide App',
            projectDescription:
                'Powered by TMDb API, it presents the movie information of Trending/Upcoming etc Movies/Shows.\nIt also displays cast of the Movie/Show along with their biography and filmography.',
            projectUrl: moxshowUrl,
          ),
          const SizedBox(
            height: 80,
          ),
          ProjectList(
            projectImage: expense,
            projectText: 'Expense-X : An Expense Tracking App',
            projectDescription:
                'It tracks the expense entered by user and stores it based on categories provided by user.\nIt also displays a chart which shows which type of Expense has higher value.',
            projectUrl: expensexUrl,
          ),
          const SizedBox(
            height: 80,
          ),
          ProjectList(
            projectImage: gotquiz,
            projectText: 'Throne Trivia - A Game Of Thrones Quiz App',
            projectDescription:
                'A Simple Quiz app for Game of thrones enthusiasts with some tricky questions.',
            projectUrl: ttUrl,
          ),
          const SizedBox(
            height: 100,
          ),
        ],
      ));
}

Widget desktopProjects() {
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
            child: const Text("Projects",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 30,
                    color: Colors.white,
                    fontWeight: FontWeight.bold)),
          ),
          const SizedBox(
            height: 100,
          ),
          ProjectList(
            projectImage: moxshow,
            projectText: 'MoxShow - A Movies/Shows Guide App',
            projectDescription:
                'Powered by TMDb API, it presents the movie information of Trending/Upcoming etc Movies/Shows.\nIt also displays cast of the Movie/Show along with their biography and filmography.',
            projectUrl: moxshowUrl,
          ),
          const SizedBox(
            height: 80,
          ),
          ProjectList(
            projectImage: expense,
            projectText: 'Expense-X : An Expense Tracking App',
            projectDescription:
                'It tracks the expense entered by user and stores it based on categories provided by user.\nIt also displays a chart which shows which type of Expense has higher value.',
            projectUrl: expensexUrl,
          ),
          const SizedBox(
            height: 80,
          ),
          ProjectList(
            projectImage: gotquiz,
            projectText: 'Throne Trivia - A Game Of Thrones Quiz App',
            projectDescription:
                'A Simple Quiz app for Game of thrones enthusiasts with some tricky questions.',
            projectUrl: ttUrl,
          ),
          const SizedBox(
            height: 100,
          ),
        ],
      ));
}
