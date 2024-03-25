import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz/answer_button.dart';
import 'package:quiz/data/questions.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key, required this.onSelectAnswer});

  final void Function(String answer) onSelectAnswer;

  @override
  State<QuestionsScreen> createState() {
    return _QuestionsScreenState();
  }
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  var currentIndex = 0;

  void nextQuestion(String selectedAnswer) {
    widget.onSelectAnswer(selectedAnswer);
    setState(() => currentIndex++);
  }

  @override
  Widget build(BuildContext context) {
    final current = questions[currentIndex];

    return SizedBox(
      width: double.infinity,
      child: Container(
        padding:
            const EdgeInsets.only(left: 32, top: 192, right: 32, bottom: 64),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              current.question,
              textAlign: TextAlign.center,
              style: GoogleFonts.robotoSlab(
                color: Colors.white,
                fontSize: 20,
              ),
            ),
            const SizedBox(height: 32),
            ...current.getShuffledAnswers().map(
                  (answer) => Padding(
                    padding: const EdgeInsets.only(bottom: 8), // Add space
                    child: AnswerButton(
                        text: answer, onTap: () => nextQuestion(answer)),
                  ),
                ),
          ],
        ),
      ),
    );
  }
}
