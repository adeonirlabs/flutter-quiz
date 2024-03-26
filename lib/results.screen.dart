import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz/data/questions.dart';
import 'package:quiz/questions_summary.dart';

class ResultsScreen extends StatelessWidget {
  const ResultsScreen({super.key, required this.answers});

  final List<String> answers;

  List<Map<String, Object>> getSummaryData() {
    final List<Map<String, Object>> summary = [];

    for (var i = 0; i < answers.length; i++) {
      final Map<String, Object> question = {
        'question_index': i,
        'question': questions[i].question,
        'correct_answer': questions[i].answers[0],
        'selected_answer': answers[i],
      };

      summary.add(question);
    }

    return summary;
  }

  @override
  Widget build(BuildContext context) {
    final summaryData = getSummaryData();
    final totalQuestions = questions.length;
    final correctAnswers = summaryData
        .where((element) =>
            element['selected_answer'] == element['correct_answer'])
        .length;

    return Container(
      padding: const EdgeInsets.only(left: 32, top: 128, right: 32, bottom: 64),
      child: Column(
        children: [
          Text(
            'You answered $correctAnswers out of $totalQuestions questions correctly!',
            textAlign: TextAlign.center,
            style: GoogleFonts.robotoSlab(
              color: Colors.white,
              fontSize: 20,
            ),
          ),
          const SizedBox(height: 32),
          const Text(
            'List of questions and answers...',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
            ),
          ),
          const SizedBox(height: 32),
          OutlinedButton(
            onPressed: () => {},
            style: OutlinedButton.styleFrom(
              foregroundColor: Colors.white,
              padding: const EdgeInsets.symmetric(
                horizontal: 32,
                vertical: 8,
              ),
            ),
            child: const Text('Restart Quiz'),
          ),
        ],
      ),
    );
  }
}
