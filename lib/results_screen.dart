import 'package:flutter/material.dart';
import 'package:flutter_quiz/data/questions.dart';

import 'package:flutter_quiz/questions_summary.dart';

class ResultsScreen extends StatelessWidget {
  const ResultsScreen({super.key, required this.chosenOptions});

  final List<String> chosenOptions;

  List<Map<String, Object>> getSummeryData() {
    final List<Map<String, Object>> summary = [];
    for (var i = 0; i < chosenOptions.length; i++) {
      summary.add(
        {
          'question_index': i,
          'question': questions[i].ques,
          'correct_answer': questions[i].ans[0],
          'user_answer': chosenOptions[i]
        },
      );
    }
    return summary;
  }

  @override
  Widget build(context) {
    final summaryData = getSummeryData();
    final numTotal = questions.length;
    final numCorrect = summaryData.where((data) {
      return data['correct_answer'] == data['user_answer'];
    }).length;

    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'You answered $numCorrect/$numTotal questions correctly',
            ),
            const SizedBox(height: 30),
            QuestionsSummary(summaryData),
            TextButton(
              onPressed: () {},
              child: const Text('Restart Quiz'),
            ),
          ],
        ),
      ),
    );
  }
}
