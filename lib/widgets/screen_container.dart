import 'package:flutter/material.dart';

class ScreenContainer extends StatelessWidget {
  const ScreenContainer({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          gradient: LinearGradient(
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        colors: [
          Color.fromARGB(255, 77, 72, 234),
          Color.fromARGB(255, 5, 2, 99),
        ],
      )),
      child: child,
    );
  }
}
