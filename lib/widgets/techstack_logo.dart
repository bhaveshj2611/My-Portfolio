import 'package:flutter/material.dart';
import 'package:portfolio_webapp/utils/constants.dart';

class SkillLogo extends StatefulWidget {
  const SkillLogo({super.key, required this.logoName});

  final String logoName;

  @override
  State<SkillLogo> createState() => _SkillLogoState();
}

class _SkillLogoState extends State<SkillLogo> {
  bool isHovering = false;
  @override
  Widget build(BuildContext context) {
    bool isMobile = false;
    if (w! < 400 && h! < 900) {
      isMobile = true;
    }
    return InkWell(
      onTap: () {},
      onHover: (value) {
        setState(() {
          isHovering = value;
        });
      },
      child: isMobile
          ? Container(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: Image.asset(
                widget.logoName,
                width: 50,
                fit: BoxFit.cover,
              ),
            )
          : AnimatedContainer(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              duration: const Duration(milliseconds: 200),
              curve: Curves.easeInOut,
              transform: Matrix4.identity()..scale(isHovering ? 1.2 : 1.0),
              child: Image.asset(
                widget.logoName,
                width: 100,
                fit: BoxFit.cover,
              ),
            ),
    );
  }
}
