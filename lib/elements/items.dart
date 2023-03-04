// ignore_for_file: unused_import, unused_local_variable

import 'package:flutter/material.dart';

class TutorialsName {
  String language;
  String iconpath;
  Color boxColor;

  TutorialsName({
    required this.language,
    required this.iconpath,
    required this.boxColor,
  });

  static List<TutorialsName> getTutorialsName() {
    List<TutorialsName> tutorialname = [];

    tutorialname.add(TutorialsName(
        language: "C",
        iconpath: 'images/c.png',
        boxColor: Colors.yellowAccent));
    tutorialname.add(TutorialsName(
        language: "MySQL",
        iconpath: 'images/mysql.png',
        boxColor: Colors.redAccent));
    tutorialname.add(TutorialsName(
        language: "JavaScript",
        iconpath: 'images/java-script.png',
        boxColor: Colors.greenAccent));

    return tutorialname;
  }
}
