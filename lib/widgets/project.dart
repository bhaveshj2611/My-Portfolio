import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio_webapp/utils/constants.dart';
import 'package:url_launcher/url_launcher.dart';

class ProjectList extends StatefulWidget {
  const ProjectList(
      {super.key,
      required this.projectImage,
      required this.projectText,
      required this.projectDescription,
      required this.projectUrl});

  final String projectImage;
  final String projectText;
  final String projectDescription;
  final Uri projectUrl;

  @override
  State<ProjectList> createState() => _ProjectListState();
}

class _ProjectListState extends State<ProjectList> {
  bool isHovering = false;
  @override
  Widget build(BuildContext context) {
    bool isMobile = false;
    if (w! < 400 && h! < 900) {
      isMobile = true;
    }
    return isMobile
        ? InkWell(
            onTap: () {
              setState(() {
                launchUrl(widget.projectUrl,
                    mode: LaunchMode.externalApplication);
              });
            },
            child: Stack(
              children: [
                Container(
                  child: Container(
                    padding: const EdgeInsets.all(10),
                    width: 300,
                    height: 300,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        image: DecorationImage(
                            image: AssetImage(widget.projectImage),
                            fit: BoxFit.cover)),
                  ),
                ),
                Positioned(
                  child: Container(
                    height: 70,
                    width: 300,
                    decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(50),
                            topRight: Radius.circular(50)),
                        color: Color.fromARGB(138, 12, 58, 84)),
                  ),
                ),
                Positioned(
                  left: 30,
                  top: 20,
                  child: Container(
                    child: Text(widget.projectText,
                        textAlign: isMobile ? TextAlign.center : null,
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: isMobile ? 11 : 25,
                            fontWeight: FontWeight.bold)),
                  ),
                ),
                Positioned(
                    top: 250,
                    right: 30,
                    child: FaIcon(
                      FontAwesomeIcons.github,
                      size: isMobile ? 30 : 50,
                      color: Colors.white,
                    )),
                Positioned(
                  top: 68,
                  left: 30,
                  child: Container(
                    child: Text(
                      widget.projectDescription,
                      softWrap: true,
                      style: const TextStyle(
                        color: Color.fromARGB(0, 255, 255, 255),
                        fontSize: 16,
                      ),
                    ),
                  ),
                )
              ],
            ),
          )
        : InkWell(
            onTap: () {
              setState(() {
                launchUrl(widget.projectUrl,
                    mode: LaunchMode.externalApplication);
              });
            },
            onHover: (value) {
              setState(() {
                isHovering = value;
              });
            },
            child: Stack(
              children: [
                Container(
                  child: Container(
                    padding: const EdgeInsets.all(10),
                    width: isMobile ? 300 : 1100,
                    height: isMobile ? 300 : 300,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        image: DecorationImage(
                            image: AssetImage(widget.projectImage),
                            fit: BoxFit.cover)),
                  ),
                ),
                Positioned(
                  child: AnimatedContainer(
                    duration: const Duration(milliseconds: 400),
                    height: isHovering ? 300 : 0,
                    width: isMobile ? 300 : 1100,
                    decoration: BoxDecoration(
                        borderRadius: isHovering
                            ? BorderRadius.circular(50)
                            : const BorderRadius.only(
                                topLeft: Radius.circular(50),
                                topRight: Radius.circular(50)),
                        color: const Color.fromARGB(138, 12, 58, 84)),
                  ),
                ),
                Positioned(
                  left: 30,
                  top: 20,
                  child: AnimatedOpacity(
                    opacity: isHovering ? 1.0 : 0.0,
                    duration: const Duration(milliseconds: 600),
                    child: isHovering
                        ? Text(widget.projectText,
                            textAlign: isMobile ? TextAlign.center : null,
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: isMobile ? 11 : 25,
                                fontWeight: FontWeight.bold))
                        : const Text(''),
                  ),
                ),
                Positioned(
                    top: isMobile ? 250 : 20,
                    right: 30,
                    child: FaIcon(
                      FontAwesomeIcons.github,
                      size: isMobile ? 30 : 50,
                      color: Colors.white,
                    )),
                Positioned(
                  top: 68,
                  left: 30,
                  child: AnimatedOpacity(
                    opacity: isHovering ? 1.0 : 0.0,
                    duration: const Duration(milliseconds: 600),
                    child: isHovering
                        ? Text(
                            widget.projectDescription,
                            softWrap: true,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: isMobile ? 0 : 16,
                            ),
                          )
                        : Text(
                            widget.projectDescription,
                            softWrap: true,
                            style: const TextStyle(
                              color: Color.fromARGB(0, 255, 255, 255),
                              fontSize: 16,
                            ),
                          ),
                  ),
                )
              ],
            ),
          );
  }
}
