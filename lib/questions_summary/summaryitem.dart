import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz_app/questions_summary/questions_identifiers.dart';

class SummaryItem extends StatelessWidget {
  const SummaryItem({super.key, required this.itemData});

  final Map<String, Object> itemData;

  @override
  Widget build(BuildContext context) {
    final isCorrectAnswer =
        itemData['chosen_answers'] == itemData['correct_answer'];

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Text(((itemData['question-index'] as int) + 1).toString()),
          QuestionsIdentifiers(
            isCorrectAns: isCorrectAnswer,
            questionIndex: itemData['question-index'] as int,
          ),
          const SizedBox(
            width: 20,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  itemData['question'] as String,
                  style: GoogleFonts.lato(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  itemData['chosen_answers'] as String,
                  style: const TextStyle(
                    color: Color.fromARGB(255, 202, 171, 252),
                    fontSize: 14,
                  ),
                ),
                Text(
                  itemData['correct_answer'] as String,
                  style: const TextStyle(
                    color: Color.fromARGB(255, 181, 254, 246),
                    fontSize: 14,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
