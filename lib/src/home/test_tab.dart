import 'package:ceratocone_app1/src/model/question.dart';
import 'package:flutter/material.dart';

class TestTab extends StatefulWidget {
  const TestTab({super.key});

  @override
  State<TestTab> createState() => _TestTabState();
}

class _TestTabState extends State<TestTab> {
  List<Question> questions = [
    Question(
        questionId: 1,
        question:
            'Quanto sua visão interfere com o uso de uma tela de computador?'),
    Question(
        questionId: 2,
        question: 'Quanto sua visão interfere para dirigir durante o dia?'),
    Question(
        questionId: 3,
        question: 'Quanto sua visão interfere para dirigir durante a noite?'),
    Question(
        questionId: 4,
        question:
            'Quanto sua visão interfere com a leitura de sinais de trânsito?'),
    Question(
        questionId: 5, question: 'Quanto sua visão interfere em assistir TV?'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Teste'),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: questions.length,
        itemBuilder: (context, index) {
          final question = questions[index];

          return Card(
            child: ListTile(
              title: Text(question.question),
            ),
          );
        },
      ),
    );
  }
}
