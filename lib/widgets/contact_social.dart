import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio_webapp/utils/constants.dart';
import 'package:portfolio_webapp/widgets/social_container.dart';
import 'package:url_launcher/url_launcher.dart';

class FooterIcons extends StatefulWidget {
  const FooterIcons({super.key});

  @override
  State<FooterIcons> createState() => _FooterIconsState();
}

class _FooterIconsState extends State<FooterIcons> {
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    bool isMobile = w < 700 ? true : false;
    return Container(
      padding: EdgeInsets.symmetric(horizontal: isMobile ? 12 : 64),
      width: double.maxFinite,
      height:
          isMobile ? w * 0.8 : 240, 
      child: GridView.count(
        crossAxisCount: isMobile ? 1 : 2, 
        childAspectRatio: 6,
        crossAxisSpacing: 12,
        mainAxisSpacing: 12, 
        children: [
          SocialContainer(
            text: "Instagram",
            icon: FontAwesomeIcons.instagram,
            onTap: () {
              launchUrl(instaUrl, mode: LaunchMode.externalApplication);
            },
          ),
          SocialContainer(
            text: "X (Twitter)",
            icon: FontAwesomeIcons.twitter,
            onTap: () {
              launchUrl(twitterUrl, mode: LaunchMode.externalApplication);
            },
          ),
          SocialContainer(
            text: "LinkedIn",
            icon: FontAwesomeIcons.linkedin,
            onTap: () {
              launchUrl(linkedinUrl, mode: LaunchMode.externalApplication);
            },
          ),
          SocialContainer(
            text: "Github",
            icon: FontAwesomeIcons.github,
            onTap: () {
              launchUrl(githubUrl, mode: LaunchMode.externalApplication);
            },
          ),
        ],
      ),
    );
  }
}
