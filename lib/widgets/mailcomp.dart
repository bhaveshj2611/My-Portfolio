import 'package:flutter/material.dart';
import 'package:portfolio_webapp/utils/constants.dart';
import 'package:url_launcher/url_launcher.dart';

class MailComponent extends StatefulWidget {
  const MailComponent({super.key});

  @override
  State<MailComponent> createState() => _MailComponentState();
}

class _MailComponentState extends State<MailComponent>
    with SingleTickerProviderStateMixin {
  final Uri directMailurl = Uri(
    scheme: 'https',
    host: 'mail.google.com',
    path: '/mail/u/0/',
    queryParameters: {
      'view': 'cm',
      'fs': '1',
      'to': mailUrl.toString(),
    },
  );
  bool isHovering = false;
  late AnimationController _controller;
  late Animation<double> _underlineAnimation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(milliseconds: 500),
      vsync: this,
    );
    _underlineAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(parent: _controller, curve: Curves.easeInOut),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    bool isMobile = w < 700 ? true : false;
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "or drop a mail at ",
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: isMobile ? w * 0.025 : 20,
            color: const Color.fromARGB(255, 255, 255, 255),
            fontWeight: FontWeight.bold,
          ),
        ),
        InkWell(
          onTap: () => setState(() {
            launchUrl(directMailurl, mode: LaunchMode.externalApplication);
          }),
          onHover: (hovering) {
            setState(() {
              isHovering = hovering;
              if (isHovering) {
                _controller.forward();
              } else {
                _controller.reverse();
              }
            });
          },
          child: Stack(
            alignment: Alignment.center,
            children: [
              Text(
                " bhaveshj2611@gmail.com",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: isMobile ? w * 0.025 : 20,
                  color: const Color.fromARGB(255, 255, 255, 255),
                  fontWeight: FontWeight.bold,
                ),
              ),
              Positioned.fill(
                child: AnimatedBuilder(
                  animation: _controller,
                  builder: (context, child) {
                    return CustomPaint(
                      painter: _UnderlinePainter(_underlineAnimation.value),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class _UnderlinePainter extends CustomPainter {
  final double progress;
  _UnderlinePainter(this.progress);

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = const Color.fromARGB(255, 234, 249, 255)
      ..strokeWidth = 3.0
      ..style = PaintingStyle.stroke;

    const startX = 0.0;
    final endX = size.width * progress;
    final y = size.height;

    canvas.drawLine(Offset(startX, y), Offset(endX, y), paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => true;
}
