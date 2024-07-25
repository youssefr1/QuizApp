import 'package:flutter/material.dart';

class AnswersButtom extends StatelessWidget {
  // ignore: non_constant_identifier_names
  const AnswersButtom(
    this.answers_text,
    this.onpressed, {
    super.key,
  });
  // ignore: non_constant_identifier_names
  final String answers_text;
  final Function() onpressed;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: onpressed,
        style: ElevatedButton.styleFrom(
            foregroundColor: Colors.white,
            backgroundColor: const Color.fromARGB(255, 138, 6, 231),
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 40),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(40))),
        child: Text(
          answers_text,
          textAlign: TextAlign.center,
        ));
  }
}
