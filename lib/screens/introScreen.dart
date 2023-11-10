// ignore_for_file: file_names, prefer_const_constructors, avoid_unnecessary_containers, unused_field, prefer_final_fields

import 'package:educational_app/screens/homeScreen.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class IntroScreen extends StatefulWidget {
  const IntroScreen({super.key});

  @override
  State<IntroScreen> createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {
  PageController _controller = PageController();
  bool onLastPage = false;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        PageView(
          controller: _controller,
          onPageChanged: (index) {
            setState(() {
              onLastPage = (index == 2);
            });
          },
          children: [
            Container(
              color: Colors.yellowAccent,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  Image.asset('images/introscreen.png'),
                  Text(
                    "Be a Developer",
                    style: TextStyle(
                      fontSize: 15,
                      letterSpacing: 2.5,
                    ),
                  ),
                  Text(
                    "Everything is All About Coding",
                    style: TextStyle(
                      fontSize: 20,
                      letterSpacing: 2.5,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              color: Colors.teal,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('images/introscreen.png'),
                  Text(
                    "Be a Developer",
                    style: TextStyle(
                      fontSize: 15,
                      letterSpacing: 2.5,
                    ),
                  ),
                  Text(
                    "Everything is All About Coding",
                    style: TextStyle(
                      fontSize: 20,
                      letterSpacing: 2.5,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              color: Colors.red,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('images/introscreen.png'),
                  Text(
                    "Be a Developer",
                    style: TextStyle(
                      fontSize: 15,
                      letterSpacing: 2.5,
                    ),
                  ),
                  Text(
                    "Everything is All About Coding",
                    style: TextStyle(
                      fontSize: 20,
                      letterSpacing: 2.5,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        Container(
            alignment: Alignment(0, 0.85),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    onTap: () {
                      _controller.jumpToPage(2);
                    },
                    child: Text(
                      'Skip',
                      style: TextStyle(
                        fontSize: 15,
                        letterSpacing: 2.5,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  SmoothPageIndicator(
                    controller: _controller,
                    count: 3,
                    effect: JumpingDotEffect(
                      activeDotColor: Colors.black,
                      dotColor: Colors.white,
                      dotHeight: 5,
                    ),
                  ),
                  onLastPage
                      ? GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => HomePage(),
                                ));
                          },
                          child: Text(
                            "Done",
                            style: TextStyle(
                              letterSpacing: 2.5,
                              fontSize: 15,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        )
                      : GestureDetector(
                          onTap: () {
                            _controller.nextPage(
                                duration: Duration(
                                  seconds: 1,
                                ),
                                curve: Curves.easeIn);
                          },
                          child: Text(
                            "Next",
                            style: TextStyle(
                              letterSpacing: 2.5,
                              fontSize: 15,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                ]))
      ],
    );
  }
}
