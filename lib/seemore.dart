// ignore_for_file: prefer_const_constructors, unused_element, avoid_print, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers, unused_import

import 'package:educational_app/dashboard.dart';
import 'package:educational_app/elements/items.dart';
import 'package:educational_app/homeScreen.dart';
import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class SeeMore extends StatefulWidget {
  const SeeMore({super.key});

  @override
  State<SeeMore> createState() => _SeeMoreState();
}

class _SeeMoreState extends State<SeeMore> {
  List<TutorialsName> tutorialname = [];

  void _getTutorialsName() {
    tutorialname = TutorialsName.getTutorialsName();
  }

  @override
  Widget build(BuildContext context) {
    _getTutorialsName();
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          body: Stack(
            children: [
              Column(
                children: [
                  ListView.separated(
                      itemBuilder: (context, index) {
                        return Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color:
                                tutorialname[index].boxColor.withOpacity(0.3),
                          ),
                          child: Column(
                            children: [
                              Container(
                                height: 80,
                                width: 80,
                                decoration: BoxDecoration(
                                  color: Colors.red,
                                  shape: BoxShape.circle,
                                ),
                              )
                            ],
                          ),
                        );
                      },
                      separatorBuilder: (context, index) => SizedBox(
                            height: 10,
                          ),
                      itemCount: tutorialname.length)
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
