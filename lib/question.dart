import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz_app/models/answers_buttom.dart';
import 'data/questions.dart';

class Questions extends StatefulWidget {
  const Questions(this.onSelectedscreen, {super.key});
  final void Function(String a) onSelectedscreen;

  @override
  State<Questions> createState() => _QuestionsState();
}

class _QuestionsState extends State<Questions> {
  var currentquestionindex = 0;

  void answersQuestion(String answerss) {
    widget.onSelectedscreen(answerss);
    setState(() {
      currentquestionindex += 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    final currentQuestion = questions[currentquestionindex];
    return SizedBox(
      width: double.infinity,
      child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              textAlign: TextAlign.center,
              currentQuestion.text,
              style: GoogleFonts.lato(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            ...currentQuestion.getstuffledAnswers()!.map((e) {
              return Container(
                margin: const EdgeInsets.all(20),
                child: AnswersButtom(e, () => answersQuestion(e)),
              );
            }),
          ]),
    );
  }
}
