import 'package:flutter/material.dart';

import 'package:quiz_app/answer_button.dart';

import 'package:quiz_app/data/questions.dart';

class QuesionsScreen extends StatefulWidget {
  const QuesionsScreen({super.key});
  @override
  State<StatefulWidget> createState() {
    return _QuestionsScreen();
  }
}

class _QuestionsScreen extends State<QuesionsScreen> {
  @override
  Widget build(context) {
    final currentQuestion = questions[0];

    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            currentQuestion.text,
            style: const TextStyle(color: Colors.white),
          ),
          const SizedBox(height: 30),
          ...currentQuestion.answers.map((anwser) {
            return AnswerButton(anwerText: anwser, onTap: () {});
          })
        ],
      ),
    );
  }
}
