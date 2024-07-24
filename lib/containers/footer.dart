import 'package:flutter/material.dart';
import 'package:portfolio_webapp/widgets/footer_icons.dart';
import 'package:responsive_builder/responsive_builder.dart';

class Footer extends StatefulWidget {
  const Footer({super.key});

  @override
  State<Footer> createState() => _FooterState();
}

class _FooterState extends State<Footer> {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      mobile: (p0) {
        return mobileAbout();
      },
      desktop: (p0) {
        return desktopAbout();
      },
    );
  }
}

Widget mobileAbout() {
  return Container(
      color: Colors.white,
      child: const Column(
        children: [
          SizedBox(
            height: 10,
          ),
          FooterIcons(),
          SizedBox(
            height: 25,
          ),
          Text('©️ Bhavesh Joshi'),
          SizedBox(
            height: 15,
          ),
        ],
      ));
}

Widget desktopAbout() {
  return Container(
      height: 110,
      color: Colors.white,
      child: const Column(
        children: [
          SizedBox(
            height: 10,
          ),
          FooterIcons(),
          SizedBox(
            height: 35,
          ),
          Text('©️ Bhavesh Joshi')
        ],
      ));
}
