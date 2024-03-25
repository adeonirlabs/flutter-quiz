import 'package:flutter/material.dart';
import 'package:quiz/answer_button.dart';
import 'package:quiz/data/questions.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key});

  @override
  State<QuestionsScreen> createState() {
    return _QuestionsScreenState();
  }
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  @override
  Widget build(BuildContext context) {
    final current = questions[0];

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
              style: const TextStyle(
                color: Colors.white,
                fontSize: 18,
              ),
            ),
            const SizedBox(height: 24),
            ...current.getShuffledAnswers().map(
                  (answer) => AnswerButton(text: answer, onTap: () => {}),
                ),
          ],
        ),
      ),
    );
  }
}
