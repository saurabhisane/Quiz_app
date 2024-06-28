import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz, {super.key});

  final void Function() startQuiz;

  @override
  Widget build(context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            "asset/images/quiz-logo.png",
            width: 300,
            color: const Color.fromARGB(150, 242, 242, 246),
          ),

          // Opacity(
          //   opacity: 0.7,
          //   child: Image.asset(
          //     "asset/images/quiz-logo.png",
          //     width: 300,
          //   ),
          // ),
          const SizedBox(
            height: 80,
          ),
          Text(
            "Learn flutter the fun way!!",
            style: GoogleFonts.lato(
              fontSize: 25,
              color: Colors.purple.shade200,
            ),
          ),
          const SizedBox(
            height: 30,
          ),

          OutlinedButton.icon(
              onPressed: startQuiz,
              style: OutlinedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5.0),
                ),
                foregroundColor: Colors.white,
              ),
              icon: const Icon(Icons.arrow_right_alt),
              label: const Text("Start Quiz"),
          )
        ],
      ),
    );
  }
}
