import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:portfolio_webapp/model/project_model.dart';
import 'package:portfolio_webapp/utils/app_gradient.dart';
import 'package:portfolio_webapp/utils/constants.dart';
import 'package:url_launcher/url_launcher.dart';

class ProjectDisplay extends StatelessWidget {
  final Project project;
  final VoidCallback nextProject;
  final VoidCallback previousProject;
  final bool isFirst;
  final bool isLast;

  const ProjectDisplay({
    super.key,
    required this.project,
    required this.nextProject,
    required this.previousProject,
    required this.isFirst,
    required this.isLast,
  });

  @override
  Widget build(BuildContext context) {
 
    double screenWidth = MediaQuery.of(context).size.width;

   

    bool isMobile = screenWidth < 700 ? true : false;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        SizedBox(width: isMobile ? 0 : 30),
        moveButton(previousProject, Icons.arrow_back_ios_new_rounded, isFirst,
            isMobile),
        Container(
          width: isMobile ? screenWidth * 0.7 : 480,
          height: isMobile ? screenWidth * 2.1 : 520,
          decoration: BoxDecoration(
            color: const Color(0xfffafbfb),
            border: Border.all(color: const Color(0xffd6d7d7)),
            borderRadius: BorderRadius.circular(24),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius:
                    const BorderRadius.vertical(top: Radius.circular(24)),
                child: Image.asset(
                  project.projectImage,
                  width: double.infinity,
                  height: isMobile ? 180 : 220, 
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          project.projectText,
                          style: TextStyle(
                            fontSize: isMobile ? 18 : 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            InkWell(
                              onTap: () {
                                launchUrl(Uri.parse(project.githubUrl));
                              },
                              child: SvgPicture.asset(
                                github,
                                height: 20,
                                width: 20,
                              ),
                            ),
                            const SizedBox(width: 16),
                            project.isLive
                                ? InkWell(
                                    onTap: () {
                                      launchUrl(Uri.parse(project.liveUrl));
                                    },
                                    child: SvgPicture.asset(
                                      live,
                                      height: 20,
                                      width: 20,
                                    ),
                                  )
                                : Container(),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(height: 8),
                    Text(
                      project.projectDescription,
                      textAlign: TextAlign.left,
                      style: TextStyle(fontSize: isMobile ? 12 : 14),
                    ),
                    const SizedBox(height: 20),
                    Row(
                      children: [
                        Text(
                          "Tech Stack:",
                          style: TextStyle(
                            fontSize: isMobile ? 10 : 12,
                            fontStyle: FontStyle.italic,
                          ),
                        ),
                        const SizedBox(width: 8),
                        Wrap(
                          spacing: isMobile ? 6.0 : 12.0, 
                          runSpacing:
                              isMobile ? 6.0 : 12.0, 
                          children: project.techStack.map((tech) {
                            return SvgPicture.asset(
                              tech,
                              height: isMobile ? 16 : 20,
                              width: isMobile ? 16 : 20,
                            );
                          }).toList(),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        moveButton(
            nextProject, Icons.arrow_forward_ios_rounded, isLast, isMobile),
        SizedBox(width: isMobile ? 0 : 30),
      ],
    );
  }

  Widget moveButton(
    VoidCallback onPressed,
    IconData icon,
    bool isDisabled,
    bool isMobile,
  ) {
    return IconButton(
      icon: Container(
        width: isMobile ? 32 : 48, 
        height: isMobile ? 32 : 48, 
        decoration: BoxDecoration(
          borderRadius:
              isMobile ? BorderRadius.circular(12) : BorderRadius.circular(18),
          gradient: isDisabled ? null : AppGradient.mainLG,
        ),
        child: Center(
          child: Icon(
            icon,
            size: isMobile ? 18 : 24, 
            color: Colors.white,
          ),
        ),
      ),
      onPressed: isDisabled ? null : onPressed,
    );
  }
}
