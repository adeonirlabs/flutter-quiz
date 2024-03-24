import 'package:flutter/material.dart';
import 'package:quiz/screen_container.dart';
import 'package:quiz/start_screen.dart';

void main() {
  runApp(const Quiz());
}

class Quiz extends StatelessWidget {
  const Quiz({super.key});

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
