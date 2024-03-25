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
          Color.fromARGB(255, 105, 43, 206),
          Color.fromARGB(255, 27, 1, 107),
        ],
      )),
      padding: const EdgeInsets.only(left: 32, top: 192, right: 32, bottom: 64),
      child: child,
    );
  }
}
