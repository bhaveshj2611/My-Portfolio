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
        duration: const Duration(milliseconds: 500),
        margin: const EdgeInsets.all(0),
        padding: const EdgeInsets.all(15),
        decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(
                color: isHovering
                    ? const Color.fromARGB(0, 70, 129, 177)
                    : const Color.fromARGB(255, 255, 255, 255),
                width: 3)),
        child: CircleAvatar(
          foregroundImage: const AssetImage(profile32),
          backgroundColor: Theme.of(context).colorScheme.background,
          radius: 120,
        ),
      ),
    );
  }
}
