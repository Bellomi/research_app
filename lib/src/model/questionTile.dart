import 'package:flutter/material.dart';

class QuestionTile extends StatelessWidget {
  const QuestionTile({super.key, required this.question});

  final String question;

  @override
  Widget build(BuildContext context) {
    return Text(question);
  }
}
