import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
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
        width: 170,
        decoration: BoxDecoration(
            color: isHovering
                ? const Color.fromARGB(255, 0, 114, 207)
                : const Color.fromARGB(255, 255, 255, 255),
            borderRadius: BorderRadius.circular(40)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton(
              onPressed: () {
                setState(() {
                  launchUrl(twitterUrl, mode: LaunchMode.externalApplication);
                });
              },
              icon: const FaIcon(FontAwesomeIcons.twitter),
              color: isHovering
                  ? Colors.white
                  : const Color.fromARGB(255, 0, 114, 207),
              iconSize: 25,
              hoverColor: const Color.fromARGB(121, 0, 40, 72),
            ),
            IconButton(
              onPressed: () {
                setState(() {
                  launchUrl(linkedinUrl, mode: LaunchMode.externalApplication);
                });
              },
              icon: const FaIcon(FontAwesomeIcons.linkedin),
              color: isHovering
                  ? Colors.white
                  : const Color.fromARGB(255, 0, 114, 207),
              iconSize: 25,
              hoverColor: const Color.fromARGB(121, 0, 40, 72),
            ),
            IconButton(
              onPressed: () {
                setState(() {
                  launchUrl(githubUrl, mode: LaunchMode.externalApplication);
                });
              },
              icon: const FaIcon(FontAwesomeIcons.github),
              color: isHovering
                  ? Colors.white
                  : const Color.fromARGB(255, 0, 114, 207),
              iconSize: 25,
              hoverColor: const Color.fromARGB(121, 0, 40, 72),
            )
          ],
        ),
      ),
    );
  }
}
