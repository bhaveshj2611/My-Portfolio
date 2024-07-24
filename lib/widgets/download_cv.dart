import 'package:flutter/material.dart';
import 'package:portfolio_webapp/utils/constants.dart';
import 'package:url_launcher/url_launcher.dart';

class Socials extends StatefulWidget {
  const Socials({super.key});

  @override
  State<Socials> createState() => _SocialsState();
}

class _SocialsState extends State<Socials> {
  bool isHovering = false;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      onHover: (value) {
        setState(() {
          isHovering = value;
        });
      },
      child: AnimatedContainer(
          duration: const Duration(milliseconds: 400),
          height: 50,
          padding: const EdgeInsets.symmetric(horizontal: 10),
          width: 220,
          decoration: BoxDecoration(
              color: isHovering
                  ? const Color.fromARGB(255, 0, 14, 36)
                  : const Color.fromARGB(255, 255, 255, 255),
              borderRadius: BorderRadius.circular(40)),
          child: InkWell(
            onTap: () {
              launchUrl(resumeUrl, mode: LaunchMode.externalApplication);
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Download CV',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: isHovering
                          ? const Color.fromARGB(255, 255, 255, 255)
                          : const Color.fromARGB(255, 0, 114, 207)),
                ),
                Icon(
                  Icons.download_done_sharp,
                  color: isHovering
                      ? const Color.fromARGB(255, 255, 255, 255)
                      : const Color.fromARGB(255, 0, 114, 207),
                )
              ],
            ),
          )),
    );
  }
}
