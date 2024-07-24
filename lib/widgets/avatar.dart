import 'package:flutter/material.dart';
import 'package:portfolio_webapp/utils/constants.dart';

class Avatar extends StatefulWidget {
  const Avatar({super.key});

  @override
  State<Avatar> createState() => _AvatarState();
}

class _AvatarState extends State<Avatar> {
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
        duration: const Duration(milliseconds: 300),
        margin: const EdgeInsets.all(0),
        padding:
            isHovering ? const EdgeInsets.all(15) : const EdgeInsets.all(10),
        decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(
                color: isHovering
                    ? const Color.fromARGB(255, 0, 78, 141)
                    : const Color.fromARGB(255, 255, 255, 255),
                width: isHovering ? 5 : 3)),
        child: const CircleAvatar(
          foregroundImage: AssetImage(profile2),
          backgroundColor: Color.fromARGB(255, 255, 255, 255),
          radius: 120,
        ),
      ),
    );
  }
}
