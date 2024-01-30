import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz, {super.key});
  final Function() startQuiz;

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 40),

          child: Image.asset(
            'assets/images/quiz-logo.png',
            width: 300,
            height: 300,
            color: Color.fromARGB(108, 255, 255, 255),
          ),

          // child: Opacity(
          //   opacity: 0.4,
          //   child: Image.asset(
          //     'assets/images/quiz-logo.png',
          //     width: 300,
          //     height: 300,
          //   ),
          // ),
        ),
        const SizedBox(height: 20),
        Text(
          'Learn flutter the fun way!',
          style: GoogleFonts.lato(
            fontSize: 30,
            color: Colors.white,
          ),
        ),
        const SizedBox(height: 20),
        OutlinedButton(
            onPressed: startQuiz,
            style: OutlinedButton.styleFrom(foregroundColor: Colors.white),
            child: const Text('Start Quiz'))
      ],
    ));
  }
}
