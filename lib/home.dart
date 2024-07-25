import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// ignore: must_be_immutable
class Home extends StatelessWidget {
  Home(this.switchscreen, {super.key});
  void Function() switchscreen;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            'assets/images/quiz-logo.png',
            width: 240,
            color: const Color.fromARGB(255, 78, 0, 94),
          ),
          const SizedBox(height: 80),
          Text('Learn Flutter',
              style: GoogleFonts.lato(
                  color: Colors.white,
                  fontSize: 19,
                  fontWeight: FontWeight.bold)),
          const SizedBox(height: 20),
          OutlinedButton.icon(
              style: OutlinedButton.styleFrom(
                  foregroundColor: Colors.black,
                  backgroundColor: Colors.white54),
              icon: const Icon(Icons.arrow_right_alt),
              onPressed: switchscreen,
              label: const Text('Start Quiz'))
        ],
      ),
    );
  }
}
