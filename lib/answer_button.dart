import 'package:flutter/material.dart';
import 'package:quiz_app/main.dart';

class AnswerButton extends StatelessWidget {
  const AnswerButton(
      {super.key, required this.answerText, required this.onTap});

  final String answerText;
  final void Function() onTap;

  @override
  Widget build(context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      child: ElevatedButton(
        onPressed: onTap,
        style: ElevatedButton.styleFrom(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 50),
            backgroundColor: Colors.purple.shade900,
            foregroundColor: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(35),
            )),
        child: Text(
          answerText,
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
