import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SocialContainer extends StatefulWidget {
  final String text;
  final IconData icon;
  final VoidCallback onTap;
  const SocialContainer(
      {super.key, required this.text, required this.icon, required this.onTap});

  @override
  State<SocialContainer> createState() => _SocialContainerState();
}

class _SocialContainerState extends State<SocialContainer>
    with SingleTickerProviderStateMixin {

  late AnimationController controller;

  late Animation<double> scaleAnimation;


  late Animation<Color?> colorAnimation;


  @override
  void initState() {
    super.initState();


    controller = AnimationController(
      duration: const Duration(milliseconds: 200),
      vsync: this,
    );

    colorAnimation = ColorTween(
      begin: Colors.white70,
      end: Colors.white, 
    ).animate(controller);
    scaleAnimation = Tween<double>(begin: 1.0, end: 1.03).animate(
      CurvedAnimation(parent: controller, curve: Curves.easeInOut),
    );
   
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    bool isMobile = w < 700 ? true : false;

    return InkWell(
      onHover: (value) {
        setState(() {
          if (value) {
            controller.forward();
          } else {
            controller.reverse();
          }
        });
      },
      onTap: widget.onTap,
      child: AnimatedBuilder(
        animation: controller,
        builder: (context, child) {
          return Transform.scale(
            scale: scaleAnimation.value,
            child: Container(
              width: isMobile ? 120 : 180,
              height: isMobile ? 120 : 60,
              decoration: BoxDecoration(
                  border:
                      Border.all(color: colorAnimation.value ?? Colors.white),
                  borderRadius: isMobile
                      ? const BorderRadius.all(Radius.circular(12))
                      : const BorderRadius.all(Radius.circular(16))),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const SizedBox(width: 8),
                  FaIcon(
                    widget.icon,
                    size: isMobile ? 18 : 48,
                    color: colorAnimation.value ?? Colors.white,
                  ),
                  const SizedBox(width: 16),
                  SizedBox(
                    child: Text(
                      widget.text,
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          color: colorAnimation.value ?? Colors.white,
                          fontSize: isMobile ? 12 : 24),
                    ),
                  ),
                  const SizedBox(width: 8)
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
