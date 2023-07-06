import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio_webapp/utils/constants.dart';
import 'package:url_launcher/url_launcher.dart';

class FooterIcons extends StatefulWidget {
  const FooterIcons({super.key});

  @override
  State<FooterIcons> createState() => _FooterIconsState();
}

class _FooterIconsState extends State<FooterIcons> {
  final Uri directMailurl = Uri(scheme: 'mailto', path: mailUrl.toString());

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
        IconButton(
          onPressed: () {
            setState(() {
              launchUrl(instaUrl, mode: LaunchMode.externalApplication);
            });
          },
          icon: const FaIcon(FontAwesomeIcons.instagram),
        ),
        IconButton(
          onPressed: () {
            setState(() {
              launchUrl(directMailurl, mode: LaunchMode.externalApplication);
            });
          },
          icon: const FaIcon(FontAwesomeIcons.envelope),
        ),
        IconButton(
          onPressed: () {
            setState(() {
              launchUrl(twitterUrl, mode: LaunchMode.externalApplication);
            });
          },
          icon: const FaIcon(FontAwesomeIcons.twitter),
        ),
        IconButton(
          onPressed: () {
            setState(() {
              launchUrl(linkedinUrl, mode: LaunchMode.externalApplication);
            });
          },
          icon: const FaIcon(FontAwesomeIcons.linkedinIn),
        ),
        IconButton(
          onPressed: () {
            setState(() {
              launchUrl(githubUrl, mode: LaunchMode.externalApplication);
            });
          },
          icon: const FaIcon(FontAwesomeIcons.github),
        )
      ]),
    );
  }
}
