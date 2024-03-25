import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.onStartQuiz, {super.key});

  final void Function() onStartQuiz;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(32),
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Image.asset(
              'assets/images/quiz-logo.png',
              width: 240,
              color: const Color.fromARGB(96, 255, 255, 255),
            ),
            const SizedBox(height: 32),
            Text(
              'Learn Flutter the fun way!',
              textAlign: TextAlign.center,
              style: GoogleFonts.robotoSlab(
                color: Colors.white,
                fontSize: 24,
              ),
            ),
            const SizedBox(height: 32),
            OutlinedButton(
                onPressed: onStartQuiz,
                style: OutlinedButton.styleFrom(
                  foregroundColor: Colors.white,
                  padding: const EdgeInsets.symmetric(
                    horizontal: 32,
                    vertical: 8,
                  ),
                ),
                child: const Text('Start Quiz'))
          ],
        ),
      ),
    );
  }
}
