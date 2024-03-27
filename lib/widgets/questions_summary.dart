import 'package:flutter/material.dart';
import 'package:quiz/widgets/summary_item.dart';

class QuestionsSummary extends StatelessWidget {
  const QuestionsSummary({super.key, required this.data});

  final List<Map<String, Object>> data;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.5,
      child: SingleChildScrollView(
        child: Column(
          children: data.map((item) => SummaryItem(data: item)).toList(),
        ),
      ),
    );
  }
}
