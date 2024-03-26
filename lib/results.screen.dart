import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ResultsScreen extends StatelessWidget {
  const ResultsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 32, top: 192, right: 32, bottom: 64),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            'You answered X out of Y questions correctly',
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
