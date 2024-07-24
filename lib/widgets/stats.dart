import 'package:flutter/material.dart';


class Stats extends StatefulWidget {
  const Stats({super.key});

  @override
  State<Stats> createState() => _StatsState();
}

class _StatsState extends State<Stats> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<int> _repoAnimation;
  late Animation<int> _commitsAnimation;
  late Animation<int> _problemsSolvedAnimation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 7),
      vsync: this,
    );

    _repoAnimation = IntTween(begin: 1, end: 30).animate(
      CurvedAnimation(parent: _controller, curve: Curves.easeInOut),
    );

    _commitsAnimation = IntTween(begin: 0, end: 1300).animate(
      CurvedAnimation(parent: _controller, curve: Curves.easeInOut),
    );

    _problemsSolvedAnimation = IntTween(begin: 0, end: 600).animate(
      CurvedAnimation(parent: _controller, curve: Curves.easeInOut),
    );

    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // double w = MediaQuery.of(context).size.width;
    // bool isMobile = w < 900 ? true : false;
    // bool isTablet = w >= 900 && w < 1100;
    return Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(16),
          child: Image.asset(
            'assets/images/dev2.jpeg',
            width: 300,
          ),
        ),
        const SizedBox(height: 16),
        AnimatedBuilder(
          animation: _controller,
          builder: (context, child) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Wrap(
                spacing: 16,
                runSpacing: 16,
                alignment: WrapAlignment.center,
                children: [
                  InfoCard(
                    label: 'Github repos',
                    height: 8,
                    value: '${_repoAnimation.value}+',
                  ),
                  const SizedBox(width: 16),
                  InfoCard(
                    label: 'Github Commits',
                    height: 8,
                    value: '${_commitsAnimation.value}+',
                  ),
                  const SizedBox(width: 16),
                  InfoCard(
                    label: 'DSA Problems',
                    height: 8,
                    value: '${_problemsSolvedAnimation.value}+',
                  ),
                ],
              ),
            );
          },
        ),
      ],
    );
  }
}

class InfoCard extends StatelessWidget {
  final String label;
  final String value;
  final double height;

  const InfoCard(
      {super.key,
      required this.label,
      required this.value,
      required this.height});

  @override
  Widget build(BuildContext context) {
    return Container(
     
      constraints: const BoxConstraints(maxWidth: 140),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              value,
              style: const TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: height),
            SizedBox(
             
              child: Text(
                label,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 12,
                  color: Color.fromARGB(255, 128, 128, 128),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
