import 'package:flutter/material.dart';
import 'package:quiz/answer_button.dart';

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
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.only(top: 168, bottom: 64),
        child: Column(
          children: [
            const Text(
              'Questions Screen',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
              ),
            ),
            const SizedBox(height: 24),
            AnswerButton(text: 'Answer 1', onTap: () {}),
            AnswerButton(text: 'Answer 2', onTap: () {}),
            AnswerButton(text: 'Answer 3', onTap: () {}),
            AnswerButton(text: 'Answer 4', onTap: () {}),
          ],
        ),
      ),
    );
  }
}
