import 'package:flutter/material.dart';
import 'package:quiz/start_screen.dart';

void main() {
  runApp(const Quiz());
}

class Quiz extends StatelessWidget {
  const Quiz({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Quiz App',
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color.fromARGB(255, 105, 43, 206),
              Color.fromARGB(255, 27, 1, 107),
            ],
          )),
          child: const StartScreen(),
        ),
      ),
    );
  }
}
