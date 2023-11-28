import 'package:flutter/material.dart';

import 'package:quiz_app/answer_button.dart';

import 'package:quiz_app/data/questions.dart';

import 'package:google_fonts/google_fonts.dart';

class QuesionsScreen extends StatefulWidget {
  const QuesionsScreen({super.key, required this.onSelectAnswer});

  final void Function(String answer) onSelectAnswer;
  @override
  State<StatefulWidget> createState() {
    return _QuestionsScreen();
  }
}

class _QuestionsScreen extends State<QuesionsScreen> {
  var currentQuestionsIndex = 0;

  void answerQuestion(String selectedAnswer) {
    widget.onSelectAnswer(selectedAnswer);
    // currentQuestionsIndex = currentQuestionsIndex + 1;
    // currentQuestionsIndex += 1;
    setState(() {
      currentQuestionsIndex++;
    });
  }

  @override
  Widget build(context) {
    final currentQuestion = questions[currentQuestionsIndex];

    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              currentQuestion.text,
              style: GoogleFonts.lato(
                  color: const Color.fromARGB(255, 180, 171, 230),
                  fontSize: 24,
                  fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 30),
            ...currentQuestion.getSuffledAnswers().map((anwser) {
              return AnswerButton(
                  anwerText: anwser,
                  onTap: () {
                    answerQuestion(anwser);
                  });
            })
          ],
        ),
      ),
    );
  }
}
