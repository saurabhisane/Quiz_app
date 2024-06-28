import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:quiz_app/data/questions.dart';
import 'package:quiz_app/questions_summary/questions_summary.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen({super.key, required this.chosenAnswers,required this.restartQuizz});

  final List<String> chosenAnswers;
  final void Function() restartQuizz;



  List<Map<String, Object>> getSummaryData() {
    final List<Map<String, Object>> summary = [];
    for (var i = 0; i < chosenAnswers.length; i++) {
      summary.add(
        {
          'question-index': i,
          'question': questions[i].text,
          'correct_answer': questions[i].answers[0],
          'chosen_answers': chosenAnswers[i],
        },
      );
    }
    return summary;
  }

  @override
  Widget build(BuildContext context) {
    final summaryData = getSummaryData();
    final numTotalQuestion = questions.length;
    final numCorrectQuestion = summaryData.where((data) {
      return data['chosen_answers'] == data['correct_answer'];
    }).length;

    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "You answered $numCorrectQuestion question out of $numTotalQuestion questions Correctly !!",
              style: GoogleFonts.lato(
                color: Colors.purple.shade200,
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 30,
            ),
            QuestionsSummary(getSummaryData()),
            // const Text("Lists of answers and questions..."),
            const SizedBox(
              height: 30,
            ),
            TextButton.icon(
                onPressed: restartQuizz,
                style: TextButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  foregroundColor: Colors.purple.shade100,
                ),
                icon: const Icon(Icons.refresh_rounded),
                label: const Text(
                  "Re-start Quiz",
                ))
          ],
        ),
      ),
    );
  }
}
