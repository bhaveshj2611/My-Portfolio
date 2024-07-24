import 'package:flutter/material.dart';

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
  return const SizedBox(
      height: 40,
      // color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          

          Text(
            'Developed by Bhavesh 👨🏻‍💻❤️',
            style: TextStyle(fontSize: 10),
          )
        ],
      ));
}

Widget desktopAbout() {
  return const SizedBox(
      height: 40,
    
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          

          Text('Developed by Bhavesh 👨🏻‍💻❤️')
        ],
      ));
}
