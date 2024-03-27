import 'package:flutter/material.dart';
import 'package:quiz/data/questions.dart';
import 'package:quiz/views/questions_screen.dart';
import 'package:quiz/views/results.screen.dart';
import 'package:quiz/views/start_screen.dart';
import 'package:quiz/widgets/screen_container.dart';

enum AppScreens { start, questions, results }

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  late AppScreens currentScreen = AppScreens.start;
  List<String> selectedAnswers = [];

  void handleStartQuiz() {
    setState(() {
      currentScreen = AppScreens.questions;
    });
  }

  void handleRestartQuiz() {
    setState(() {
      currentScreen = AppScreens.start;
      selectedAnswers = [];
    });
  }

  void handleSelectAnswer(String answer) {
    selectedAnswers.add(answer);
    if (selectedAnswers.length == questions.length) {
      setState(() {
        currentScreen = AppScreens.results;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    Widget activeWidget;

    switch (currentScreen) {
      case AppScreens.start:
        activeWidget = StartScreen(onStartQuiz: handleStartQuiz);
        break;
      case AppScreens.questions:
        activeWidget = QuestionsScreen(
          onSelectAnswer: handleSelectAnswer,
        );
        break;
      case AppScreens.results:
        activeWidget = ResultsScreen(
          answers: selectedAnswers,
          onRestartQuiz: handleRestartQuiz,
        );
        break;
    }

    return MaterialApp(
      title: 'Quiz App',
      home: Scaffold(
        body: ScreenContainer(
          child: activeWidget,
        ),
      ),
    );
  }
}
