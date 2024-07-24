

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
// import 'package:portfolio_webapp/widgets/skillMotion.dart';
// import 'package:portfolio_webapp/widgets/techstack_logo.dart';
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
  return SizedBox(
    width: double.infinity,
    child: Column(
      children: [
        const SizedBox(height: 40),
        Container(
          child: const Text(
            "S K I L L S",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 32,
              color: Color.fromARGB(255, 0, 60, 110),
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        const SizedBox(height: 40),
        LayoutBuilder(
          builder: (context, constraints) {
            final bool isSmallScreen = constraints.maxWidth < 600;
            return SingleChildScrollView(
              padding: const EdgeInsets.all(10),
              child: Column(
                children: [
                  Wrap(
                    alignment: WrapAlignment.center,
                    spacing: isSmallScreen ? 20 : 20,
                    runSpacing: isSmallScreen ? 40 : 40,
                    children: [
                      SkillButton(
                        image: java,
                        label: 'Java',
                        paddingHorizontal: isSmallScreen ? 16 : 24,
                        paddingVertical: isSmallScreen ? 8 : 12,
                        fontSize: isSmallScreen ? 14 : 16,
                      ),
                      SkillButton(
                        image: dart,
                        label: 'Dart',
                        paddingHorizontal: isSmallScreen ? 16 : 24,
                        paddingVertical: isSmallScreen ? 8 : 12,
                        fontSize: isSmallScreen ? 14 : 16,
                      ),
                      SkillButton(
                        image: js,
                        label: 'JavaScript',
                        paddingHorizontal: isSmallScreen ? 16 : 24,
                        paddingVertical: isSmallScreen ? 8 : 12,
                        fontSize: isSmallScreen ? 14 : 16,
                      ),
                      SkillButton(
                        image: ts,
                        label: 'TypeScript',
                        paddingHorizontal: isSmallScreen ? 16 : 24,
                        paddingVertical: isSmallScreen ? 8 : 12,
                        fontSize: isSmallScreen ? 14 : 16,
                      ),
                      SkillButton(
                        image: cpp,
                        label: 'C++',
                        paddingHorizontal: isSmallScreen ? 16 : 24,
                        paddingVertical: isSmallScreen ? 8 : 12,
                        fontSize: isSmallScreen ? 14 : 16,
                      ),
                      SkillButton(
                        image: html,
                        label: 'HTML5',
                        paddingHorizontal: isSmallScreen ? 16 : 24,
                        paddingVertical: isSmallScreen ? 8 : 12,
                        fontSize: isSmallScreen ? 14 : 16,
                      ),
                      SkillButton(
                        image: css,
                        label: 'CSS3',
                        paddingHorizontal: isSmallScreen ? 16 : 24,
                        paddingVertical: isSmallScreen ? 8 : 12,
                        fontSize: isSmallScreen ? 14 : 16,
                      ),
                      SkillButton(
                        image: flutter,
                        label: 'Flutter',
                        paddingHorizontal: isSmallScreen ? 16 : 24,
                        paddingVertical: isSmallScreen ? 8 : 12,
                        fontSize: isSmallScreen ? 14 : 16,
                      ),
                      SkillButton(
                        image: firebase,
                        label: 'Firebase',
                        paddingHorizontal: isSmallScreen ? 16 : 24,
                        paddingVertical: isSmallScreen ? 8 : 12,
                        fontSize: isSmallScreen ? 14 : 16,
                      ),
                      SkillButton(
                        image: node,
                        label: 'Node JS',
                        paddingHorizontal: isSmallScreen ? 16 : 24,
                        paddingVertical: isSmallScreen ? 8 : 12,
                        fontSize: isSmallScreen ? 14 : 16,
                      ),
                      SkillButton(
                        image: express,
                        label: 'Express JS',
                        paddingHorizontal: isSmallScreen ? 16 : 24,
                        paddingVertical: isSmallScreen ? 8 : 12,
                        fontSize: isSmallScreen ? 14 : 16,
                      ),
                      SkillButton(
                        image: mongo,
                        label: 'Mongo DB',
                        paddingHorizontal: isSmallScreen ? 16 : 24,
                        paddingVertical: isSmallScreen ? 8 : 12,
                        fontSize: isSmallScreen ? 14 : 16,
                      ),
                      SkillButton(
                        image: mysql,
                        label: 'MySQL',
                        paddingHorizontal: isSmallScreen ? 16 : 24,
                        paddingVertical: isSmallScreen ? 8 : 12,
                        fontSize: isSmallScreen ? 14 : 16,
                      ),
                      SkillButton(
                        image: git,
                        label: 'Git',
                        paddingHorizontal: isSmallScreen ? 16 : 24,
                        paddingVertical: isSmallScreen ? 8 : 12,
                        fontSize: isSmallScreen ? 14 : 16,
                      ),
                      SkillButton(
                        image: github,
                        label: 'Github',
                        paddingHorizontal: isSmallScreen ? 16 : 24,
                        paddingVertical: isSmallScreen ? 8 : 12,
                        fontSize: isSmallScreen ? 14 : 16,
                      ),
                      SkillButton(
                        image: render,
                        label: 'Render',
                        paddingHorizontal: isSmallScreen ? 16 : 24,
                        paddingVertical: isSmallScreen ? 8 : 12,
                        fontSize: isSmallScreen ? 14 : 16,
                      ),
                      SkillButton(
                        image: vercel,
                        label: 'Vercel',
                        paddingHorizontal: isSmallScreen ? 16 : 24,
                        paddingVertical: isSmallScreen ? 8 : 12,
                        fontSize: isSmallScreen ? 14 : 16,
                      ),
                      SkillButton(
                        image: netlify,
                        label: 'Netlify',
                        paddingHorizontal: isSmallScreen ? 16 : 24,
                        paddingVertical: isSmallScreen ? 8 : 12,
                        fontSize: isSmallScreen ? 14 : 16,
                      ),
                      SkillButton(
                        image: getx,
                        label: 'GetX',
                        paddingHorizontal: isSmallScreen ? 16 : 24,
                        paddingVertical: isSmallScreen ? 8 : 12,
                        fontSize: isSmallScreen ? 14 : 16,
                      ),
                      SkillButton(
                        image: postman,
                        label: 'Postman',
                        paddingHorizontal: isSmallScreen ? 16 : 24,
                        paddingVertical: isSmallScreen ? 8 : 12,
                        fontSize: isSmallScreen ? 14 : 16,
                      ),
                      SkillButton(
                        image: json,
                        label: 'JSON',
                        paddingHorizontal: isSmallScreen ? 16 : 24,
                        paddingVertical: isSmallScreen ? 8 : 12,
                        fontSize: isSmallScreen ? 14 : 16,
                      ),
                      SkillButton(
                        image: api,
                        label: 'Rest APIs',
                        paddingHorizontal: isSmallScreen ? 16 : 24,
                        paddingVertical: isSmallScreen ? 8 : 12,
                        fontSize: isSmallScreen ? 14 : 16,
                      ),
                      SkillButton(
                        image: and,
                        label: 'More',
                        paddingHorizontal: isSmallScreen ? 16 : 24,
                        paddingVertical: isSmallScreen ? 8 : 12,
                        fontSize: isSmallScreen ? 14 : 16,
                      ),
                    ],
                  ),
                  const SizedBox(height: 30),
                ],
              ),
            );
          },
        ),
      ],
    ),
  );
}

Widget desktopSkills() {
  return Column(
    children: [
      SizedBox(
          height: 615,
          width: double.infinity,
          
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Stack(
                children: [
                  Container(
                    padding: const EdgeInsets.only(left: 32),
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        "SKILLS",
                      
                        style: TextStyle(
                          fontSize: 142,
                          color: const Color.fromARGB(255, 5, 143, 255)
                              .withOpacity(0.4),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                 
                  const Center(
                   
                    child: Column(
                      children: [
                        SizedBox(height: 140),
                        Wrap(
                          crossAxisAlignment: WrapCrossAlignment.center,
                          alignment: WrapAlignment.center,
                          spacing: 25,
                          
                          children: [
                            SkillButton(image: java, label: 'Java'),
                            SkillButton(image: dart, label: 'Dart'),
                            SkillButton(image: js, label: 'JavaScript'),
                            SkillButton(image: ts, label: 'TypeScript'),
                            SkillButton(image: cpp, label: 'C++'),
                            SkillButton(image: html, label: 'HTML5'),
                            SkillButton(image: css, label: 'CSS3'),
                          ],
                        ),
                        SizedBox(height: 30),
                     
                        Wrap(
                          crossAxisAlignment: WrapCrossAlignment.center,
                          alignment: WrapAlignment.center,
                          spacing: 25,
                          
                          children: [
                            SkillButton(image: flutter, label: 'Flutter'),
                            SkillButton(image: firebase, label: 'Firebase'),
                            SkillButton(image: node, label: 'Node JS'),
                            SkillButton(image: express, label: 'Express JS'),
                            SkillButton(image: mongo, label: 'Mongo DB'),
                            SkillButton(image: mysql, label: 'MySQL'),
                          ],
                        ),
                        SizedBox(height: 30),
                        
                        Wrap(
                          crossAxisAlignment: WrapCrossAlignment.center,
                          alignment: WrapAlignment.center,
                          spacing: 25,
                       
                          children: [
                            SkillButton(image: git, label: 'Git'),
                            SkillButton(image: github, label: 'Github'),
                            SkillButton(image: render, label: 'Render'),
                            SkillButton(image: vercel, label: 'Vercel'),
                            SkillButton(image: netlify, label: 'Netlify'),
                          ],
                        ),
                        SizedBox(height: 30),
                       
                        Wrap(
                          crossAxisAlignment: WrapCrossAlignment.center,
                          alignment: WrapAlignment.center,
                          spacing: 25,
                     
                          children: [
                            SkillButton(image: getx, label: 'GetX'),
                            SkillButton(image: postman, label: 'Postman'),
                            SkillButton(image: json, label: 'JSON'),
                            SkillButton(image: api, label: 'Rest APIs'),
                          ],
                        ),
                        SizedBox(height: 30),
                    
                        Wrap(
                          crossAxisAlignment: WrapCrossAlignment.center,
                          alignment: WrapAlignment.center,
                          // spacing: 25,
                          runSpacing: 30,
                          children: [
                            SkillButton(image: and, label: 'More'),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),

             
            ],
          )),
    ],
  );
}

class SkillButton extends StatefulWidget {
  final String image;
  final String label;
  final double paddingHorizontal;
  final double paddingVertical;
  final double fontSize;

  const SkillButton({
    Key? key,
    required this.image,
    required this.label,
    this.paddingHorizontal = 24,
    this.paddingVertical = 12,
    this.fontSize = 16,
  }) : super(key: key);

  @override
  _SkillButtonState createState() => _SkillButtonState();
}

class _SkillButtonState extends State<SkillButton>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _scaleAnimation;

  bool _isHovered = false;
  final bool _isPressed = false;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 300),
      reverseDuration: const Duration(milliseconds: 300),
    );
    _scaleAnimation = Tween<double>(begin: 1.0, end: 1.2).animate(
      CurvedAnimation(parent: _controller, curve: Curves.easeInOut),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _onHover(bool isHovered) {
    setState(() {
      _isHovered = isHovered;
      if (isHovered) {
        _controller.forward();
      } else {
        _controller.reverse();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: MouseRegion(
        onEnter: (_) => _onHover(true),
        onExit: (_) => _onHover(false),
        child: ScaleTransition(
          scale: _scaleAnimation,
          child: AnimatedContainer(
            duration: const Duration(milliseconds: 200),
            padding: EdgeInsets.symmetric(
              horizontal: widget.paddingHorizontal,
              vertical: widget.paddingVertical,
            ),
            decoration: BoxDecoration(
              color: const Color(0xfffafbfb),
              borderRadius: BorderRadius.circular(8),
              border: Border.all(color: const Color(0xffd6d7d7)),
              boxShadow: _isHovered
                  ? [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.2),
                        blurRadius: 10,
                        offset: const Offset(0, 5),
                      ),
                    ]
                  : [],
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                SvgPicture.asset(
                  widget.image,
                  width: 24,
                ),
                const SizedBox(width: 10),
                Text(
                  widget.label,
                  style: TextStyle(
                    fontSize: widget.fontSize,
                    fontWeight: FontWeight.bold,
                    color: _isPressed ? Colors.grey : Colors.black,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
