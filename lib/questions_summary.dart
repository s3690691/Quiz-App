import 'package:flutter/material.dart';

class QuestionsSummary extends StatelessWidget {
  const QuestionsSummary(this.summaryDate, {super.key});
  final List<Map<String, Object>> summaryDate;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: summaryDate.map((data) {
        return Row(
          children: [
            Text(((data['question_index'] as int) + 1).toString()),
          ],
        );
      }).toList(),
    );
  }
}
