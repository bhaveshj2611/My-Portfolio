import 'package:flutter/material.dart';
import 'package:portfolio_webapp/model/project_model.dart';
import 'package:portfolio_webapp/utils/constants.dart';
import 'package:portfolio_webapp/widgets/projectDisplay.dart';
import 'package:responsive_builder/responsive_builder.dart';

class Projects extends StatefulWidget {
  const Projects({super.key});

  @override
  State<Projects> createState() => _ProjectsState();
}

class _ProjectsState extends State<Projects> {
  final PageController _pageController = PageController();
  int currentIndex = 0;

  final List<Project> projects = [
    Project(
      projectImage: cyclus,
      projectText: 'Cyclus',
      projectDescription:
          'Cyclus is a female health and wellness app built with Flutter, Dart, Firebase. Cyclus offers next menstrual cycle prediction, Guided fitness and yoga stretches. It utilizes its own trained ML Model for predictive analysis.',
      githubUrl: 'https://github.com/bhaveshj2611/cyclus',
      liveUrl: 'https://cyclus.com',
      isLive: false,
      techStack: [flutter, dart, firebase, python, flask, scikit],
    ),
    Project(
      projectImage: antarmitra,
      projectText: 'Antarmitra',
      projectDescription:
          'AntarMitra is a meditation and self-care app crafted with Flutter, Dart, Firebase, and GetX. It hosts a community feed where users find support from Therapists. Integrated guided video meditations facilitate users in establishing regular mindfulness routines.',
      githubUrl: 'https://github.com/chiragbachwani/antarmitra',
      liveUrl: 'https://cyclus.com',
      isLive: false,
      techStack: [flutter, dart, firebase, getx],
    ),
    Project(
      projectImage: moxshow,
      projectText: 'MoxShow',
      projectDescription:
          'Powered by TMDb API, it presents the movie information of Trending/Upcoming etc Movies/Shows.It also displays cast of the Movie/Show along with their biography and filmography.',
      githubUrl: 'https://github.com/bhaveshj2611/moxshow',
      liveUrl: 'https://moxshow.com',
      isLive: false,
      techStack: [flutter, dart, json, api],
    ),
    Project(
      projectImage: expense,
      projectText: 'Expense-X',
      projectDescription:
          'It tracks the expense entered by user and stores it based on categories provided by user.It also displays a chart which shows which type of Expense has higher value.',
      githubUrl: 'https://github.com/user/expensex',
      liveUrl: 'https://expensex.com',
      isLive: false,
      techStack: [flutter, dart],
    ),
    Project(
      projectImage: gotquiz,
      projectText: 'Throne Trivia',
      projectDescription:
          'A Simple Quiz app for Game of thrones enthusiasts with some tricky questions.',
      githubUrl: 'https://github.com/user/thronetrivia',
      liveUrl: 'https://thronetrivia.com',
      isLive: false,
      techStack: [flutter, dart],
    ),
  ];

  void nextProject() {
    if (currentIndex < projects.length - 1) {
      setState(() {
        currentIndex++;
      });
      _pageController.animateToPage(
        currentIndex,
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    }
  }

  void prevProject() {
    if (currentIndex > 0) {
      setState(() {
        currentIndex--;
      });
      _pageController.animateToPage(
        currentIndex,
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      mobile: (context) => mobileProjects(),
      desktop: (context) => desktopProjects(),
    );
  }

  Widget mobileProjects() {
    return SizedBox(
      height: 680,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const SizedBox(height: 40),
          Container(
            child: const Text(
              "P R O J E C T S",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 32,
                color: Color.fromARGB(255, 0, 60, 110),
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const SizedBox(height: 40),
          SizedBox(
            height: 460, 
            child: PageView.builder(
              controller: _pageController,
              itemCount: projects.length,
              onPageChanged: (index) {
                setState(() {
                  currentIndex = index;
                });
              },
              itemBuilder: (context, index) {
                return ProjectDisplay(
                  project: projects[index],
                  nextProject: nextProject,
                  previousProject: prevProject,
                  isFirst: index == 0,
                  isLast: index == projects.length - 1,
                );
              },
            ),
          ),
          const SizedBox(height: 8),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(projects.length, (index) {
              return AnimatedContainer(
                duration: const Duration(milliseconds: 300),
                margin: const EdgeInsets.symmetric(horizontal: 4.0),
                height: 4.0,
                width: index == currentIndex ? 54.0 : 32.0,
                decoration: BoxDecoration(
                  color: index == currentIndex ? Colors.blue : Colors.grey,
                  borderRadius: BorderRadius.circular(4.0),
                ),
              );
            }),
          ),
        ],
      ),
    );
  }

  Widget desktopProjects() {
    return SizedBox(
      height: 600,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Stack(
            children: [
              Container(
                child: Align(
                  alignment: Alignment.center,
                  child: Text(
                    "P R O J E C T S",
                    style: TextStyle(
                      fontSize: 142,
                      color: const Color.fromARGB(255, 5, 143, 255)
                          .withOpacity(0.4),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              Column(
                children: [
                  const SizedBox(height: 100),
                  SizedBox(
                    height: 450, 
                    child: PageView.builder(
                      controller: _pageController,
                      itemCount: projects.length,
                      onPageChanged: (index) {
                        setState(() {
                          currentIndex = index;
                        });
                      },
                      itemBuilder: (context, index) {
                        return ProjectDisplay(
                          project: projects[index],
                          nextProject: nextProject,
                          previousProject: prevProject,
                          isFirst: index == 0,
                          isLast: index == projects.length - 1,
                        );
                      },
                    ),
                  ),
                  const SizedBox(height: 15),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(projects.length, (index) {
                      return AnimatedContainer(
                        duration: const Duration(milliseconds: 300),
                        margin: const EdgeInsets.symmetric(horizontal: 4.0),
                        height: 6.0,
                        width: index == currentIndex ? 72.0 : 54.0,
                        decoration: BoxDecoration(
                          color:
                              index == currentIndex ? Colors.blue : Colors.grey,
                          borderRadius: BorderRadius.circular(4.0),
                        ),
                      );
                    }),
                  ),
                  const SizedBox(height: 20),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
