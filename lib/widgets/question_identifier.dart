import 'package:flutter/material.dart';

class QuestionIdentifier extends StatelessWidget {
  const QuestionIdentifier({super.key, required this.item});

  final Map<String, Object> item;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 32,
      height: 32,
      alignment: Alignment.center,
      margin: const EdgeInsets.only(top: 4),
      decoration: BoxDecoration(
        color: item['selected_answer'] == item['correct_answer']
            ? Colors.green
            : Colors.red,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Text(
        ((item['question_index'] as int) + 1).toString(),
        style: const TextStyle(
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
