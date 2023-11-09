import 'package:flutter/material.dart';

class QuesionsScreen extends StatefulWidget {
  const QuesionsScreen(String s, List<String> list, {super.key});
  @override
  State<StatefulWidget> createState() {
    return _QuestionsScreen();
  }
}

class _QuestionsScreen extends State<QuesionsScreen> {
  @override
  Widget build(context) {
    return const Text('questions screen');
  }
}
