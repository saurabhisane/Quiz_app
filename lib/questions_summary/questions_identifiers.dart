import 'package:flutter/material.dart';

class QuestionsIdentifiers extends StatelessWidget {
  const QuestionsIdentifiers(
      {super.key, required this.isCorrectAns, required this.questionIndex});

  final bool isCorrectAns;
  final int questionIndex;

  @override
  Widget build(BuildContext context) {
    var questionNumber = questionIndex + 1;
    return Container(
      height: 40,
      width: 40,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: isCorrectAns
            ? const Color.fromARGB(255, 150, 198, 241)
            : const Color.fromARGB(255, 249, 133, 241),
        borderRadius: BorderRadius.circular(100),
      ),
      child: Text(
        questionNumber.toString(),
        style: const TextStyle(
          color: Color.fromARGB(255, 22, 2, 56),
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
