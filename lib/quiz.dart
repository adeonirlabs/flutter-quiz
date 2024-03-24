import 'package:flutter/material.dart';
import 'package:quiz/screen_container.dart';
import 'package:quiz/start_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Quiz App',
      home: Scaffold(
        body: ScreenContainer(
          child: StartScreen(),
        ),
      ),
    );
  }
}
