import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {
  const AnswerButton({
    super.key,
    required this.text,
    required this.onTap,
  });

  final String text;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onTap,
      style: ElevatedButton.styleFrom(
        foregroundColor: Colors.white,
        backgroundColor: const Color.fromARGB(255, 77, 72, 234),
        padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 4),
      ),
      child: Text(
        text,
        textAlign: TextAlign.center,
      ),
    );
  }
}
