import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:quiz_app/data/questions.dart';

import 'package:quiz_app/home.dart';
import 'package:quiz_app/models/result.dart';
import 'package:quiz_app/question.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  List<String> selectedAnswers = [];
  void chooseAnswers(String answers) {
    selectedAnswers.add(answers);
    if (selectedAnswers.length == questions.length) {
      setState(() {
        activescreen = Result(selectedAnswers);
          selectedAnswers = [];
      });
    }
    log(selectedAnswers.toString());
  }

  Widget? activescreen;
  @override
  void initState() {
    activescreen = Home(switchscreen);
    super.initState();
  }

  void switchscreen() {
    setState(() {
      activescreen = Questions(chooseAnswers);
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
            decoration: const BoxDecoration(
                gradient: LinearGradient(
                    colors: [Colors.deepPurpleAccent, Colors.purpleAccent])),
            child: activescreen),
      ),
    );
  }
}
