import 'package:flutter/material.dart';
import 'package:flutter_quiz/questions_summary/summary_item.dart';

class QuestionsSummary extends StatelessWidget {
  const QuestionsSummary(this.resultData, {super.key});

  final List<Map<String, Object>> resultData;

  @override
  Widget build(context) {
    return SizedBox(
      height: 350,
      child: SingleChildScrollView(
        child: Column(
            children: resultData.map((data) {
          return SummaryItem(data);
        }).toList()),
      ),
    );
  }
}
