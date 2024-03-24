import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

  void onStartQuiz() {
    print('Start Quiz');
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Image.asset(
            'assets/images/quiz-logo.png',
            width: 240,
          ),
          const SizedBox(height: 32),
          const Text(
            'Learn Flutter the fun way!',
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
            ),
          ),
          const SizedBox(height: 32),
          OutlinedButton(
              onPressed: onStartQuiz,
              style: ButtonStyle(
                padding: MaterialStateProperty.all(
                  const EdgeInsets.symmetric(
                    horizontal: 32,
                    vertical: 8,
                  ),
                ),
              ),
              child: const Text(
                'Start Quiz',
                style: TextStyle(
                  color: Colors.white,
                ),
              ))
        ],
      ),
    );
  }
}
