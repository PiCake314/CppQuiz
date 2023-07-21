import 'package:cpp_quiz/questions.dart';
import 'package:flutter/material.dart';

class Results extends StatelessWidget {
  const Results({super.key, required this.score, required this.total});
  final int score;
  final int total;

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Placeholder(),
      ),
    );
  }
}
