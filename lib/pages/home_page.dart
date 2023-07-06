import 'package:flutter/material.dart';
import 'package:portfolio_webapp/containers/about_me.dart';
import 'package:portfolio_webapp/containers/contact.dart';
import 'package:portfolio_webapp/containers/footer.dart';
import 'package:portfolio_webapp/containers/main_container.dart';
import 'package:portfolio_webapp/containers/myprojects.dart';
import 'package:portfolio_webapp/containers/skills.dart';
import 'package:portfolio_webapp/utils/constants.dart';
import 'package:url_launcher/url_launcher.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

var isMobile = false;

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  final ScrollController _scrollController = ScrollController();
  final skillKey = GlobalKey();
  final aboutKey = GlobalKey();
  final projectKey = GlobalKey();
  final contactKey = GlobalKey();

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  void _scrollTo(GlobalKey key) {
    final RenderObject? renderObject = key.currentContext?.findRenderObject();
    if (renderObject is RenderBox) {
      _scrollController.animateTo(
        renderObject.localToGlobal(Offset.zero).dy,
        duration: const Duration(milliseconds: 1000),
        curve: Curves.easeInOut,
      );
    }
  }

  void _updateIsMobile(MediaQueryData mediaQueryData) {
    final double screenWidth = mediaQueryData.size.width;
    final double screenHeight = mediaQueryData.size.height;
    final bool newIsMobile = screenWidth < 630 && screenHeight < 900;
    if (isMobile != newIsMobile) {
      setState(() {
        isMobile = newIsMobile;
      });
    }
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    final mediaQuery = MediaQuery.of(context);
    _updateIsMobile(mediaQuery);
  }

  Widget navButton(
    String text,
    GlobalKey key,
  ) {
    return TextButton(
        onPressed: () {
          _scrollTo(key);
        },
        child: Text(
          text,
          style: TextStyle(
              color: const Color.fromARGB(255, 0, 44, 79),
              fontSize: isMobile ? 10 : 16),
        ));
  }

  @override
  Widget build(BuildContext context) {
    w = MediaQuery.of(context).size.width;
    h = MediaQuery.of(context).size.height;

    if (w! < 630 && h! < 1000) {
      isMobile = true;
    }
    return Scaffold(
      body: SingleChildScrollView(
        controller: _scrollController,
        child: Column(
          children: [
            isMobile
                ? SingleChildScrollView(
                    child: Container(
                        width: double.infinity,
                        margin: const EdgeInsets.symmetric(
                            horizontal: 0, vertical: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            navButton('About Me', aboutKey),
                            navButton('Skills', skillKey),
                            navButton('Projects', projectKey),
                            TextButton(
                                onPressed: () {
                                  setState(() {
                                    launchUrl(resumeUrl,
                                        mode: LaunchMode.externalApplication);
                                  });
                                },
                                child: const Text(
                                  'Resume',
                                  style: TextStyle(
                                      color: Color.fromARGB(255, 0, 44, 79),
                                      fontSize: 10),
                                )),
                            navButton('Contact', contactKey),
                          ],
                        )),
                  )
                : Container(
                    margin: const EdgeInsets.symmetric(
                        horizontal: 80, vertical: 20),
                    child: Row(
                      children: [
                        navButton('About Me', aboutKey),
                        const SizedBox(
                          width: 10,
                        ),
                        navButton('Skills', skillKey),
                        const SizedBox(
                          width: 10,
                        ),
                        navButton('Projects', projectKey),
                        const SizedBox(
                          width: 10,
                        ),
                        TextButton(
                            onPressed: () {
                              setState(() {
                                launchUrl(resumeUrl,
                                    mode: LaunchMode.externalApplication);
                              });
                            },
                            child: const Text(
                              'Resume',
                              style: TextStyle(
                                  color: Color.fromARGB(255, 0, 44, 79),
                                  fontSize: 16),
                            )),
                        const SizedBox(
                          width: 10,
                        ),
                        navButton('Contact', contactKey),
                      ],
                    )),
            isMobile
                ? Container(
                    width: double.infinity,
                    decoration: const BoxDecoration(
                      gradient: LinearGradient(colors: [
                        Color.fromARGB(255, 16, 70, 124),
                        Color.fromARGB(255, 10, 120, 210)
                      ], begin: Alignment.topLeft, end: Alignment.bottomRight),
                    ),
                    child: const Column(children: [
                      SizedBox(
                        height: 60,
                      ),
                      MainContainer(),
                      SizedBox(
                        height: 30,
                      )
                    ]),
                  )
                : Container(
                    width: 1100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      gradient: const LinearGradient(colors: [
                        Color.fromARGB(255, 16, 70, 124),
                        Color.fromARGB(255, 10, 120, 210)
                      ], begin: Alignment.topLeft, end: Alignment.bottomRight),
                    ),
                    child: const Column(children: [
                      SizedBox(
                        height: 60,
                      ),
                      MainContainer(),
                      SizedBox(
                        height: 30,
                      ),
                    ]),
                  ),
            AboutMe(key: aboutKey),
            Skills(key: skillKey),
            Projects(key: projectKey),
            Contact(key: contactKey),
            const Footer(),
          ],
        ),
      ),
    );
  }
}
