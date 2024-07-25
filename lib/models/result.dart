import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz_app/data/questions.dart';
import 'package:quiz_app/question.dart';

class Result extends StatelessWidget {
  const Result(this.selectedAnswers, {super.key});
  final List<String> selectedAnswers;
  List<Map<String, Object>> getSummaryData() {
    final List<Map<String, Object>> summary = [];
    for (var i = 0; i < selectedAnswers.length; i++) {
      summary.add({
        'Question-index': i,
        'Question': questions[i].text,
        'Correct-answer ':questions[i].answers[0],
        'user-answer': selectedAnswers[i]
      });
    }
    return summary;
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text(
              '',
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            ...getSummaryData().map((e) => Column(
                  children: [
                    Row(
                      children: [
                        CircleAvatar(
                          radius: 18,
                          backgroundColor: Colors.red[300],
                          child: Text(
                              ((e['Question-index'] as int) + 1).toString()),
                        ),
                        const SizedBox(width: 10,),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(e['Question'].toString(),
                                  style: GoogleFonts.lato(
                                      color: Colors.black,
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold)),
                                      const SizedBox(height: 0.00001,),
                                      
                              Text(e['Correct-answer'].toString(),
                               style: GoogleFonts.lato(
                                      color: const Color.fromARGB(255, 191, 239, 0),
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold
                                      
                                      )),
                              Text(e['user-answer'].toString(),  style: GoogleFonts.lato(
                                      color: const Color.fromARGB(255, 222, 125, 237),
                                      )),
                            ],
                          ),
                        )
                      ],
                    ),
                  const SizedBox(height: 15,)
                  ],
                )),
            const SizedBox(height: 20),
            TextButton.icon(onPressed: () {},
             label: const Text('Restart'),icon:const Icon(Icons.add_to_photos_outlined),)
          ]),
    );
  }
}
