import 'package:flutter/material.dart';

import '../model/question.dart';

class TestTab extends StatefulWidget {
  const TestTab({super.key});

  @override
  State<TestTab> createState() => _TestTabState();
}

class _TestTabState extends State<TestTab> {
  late final Question question;
  late PageController _controller;
  int _questionNumber = 1;
  int _score = 0;

  @override
  void initState() {
    super.initState();
    _controller = PageController(initialPage: 0);
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          const SizedBox(height: 27),
          Text('Questão $_questionNumber/${questions.length}'),
          const Divider(thickness: 1, color: Colors.amberAccent),
          Expanded(
            child: PageView.builder(
              controller: _controller,
              itemCount: questions.length,
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) {
                final _question = questions[index];
                return buildQuestion(_question);
              },
            ),
          ),
          buildElevatedButton(),
          const SizedBox(height: 20),
        ],
      ),
    );
  }

  Widget buildQuestion(Question question) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 32),
        Text(
          question.question,
          style: const TextStyle(fontSize: 25),
        ),
        SizedBox(
          child: OptionsWidget(
              question: question,
              onClickedOption: (option) {
                setState(() {
                  option.isSelected = option as bool;
                });
                if (option.optionId == 0) {
                  _score = _score;
                } else if (option.optionId == 1) {
                  _score = _score + 1;
                } else if (option.optionId == 2) {
                  _score = _score + 2;
                } else if (option.optionId == 3) {
                  _score = _score + 3;
                } else if (option.optionId == 4) {
                  _score = _score + 4;
                }
              }),
        ),
      ],
    );
  }

  ElevatedButton buildElevatedButton() {
    return ElevatedButton(
      onPressed: () {
        if (_questionNumber < questions.length) {
          _controller.nextPage(
            duration: const Duration(milliseconds: 250),
            curve: Curves.easeInExpo,
          );

          setState(() {
            _questionNumber++;
          });
        } else {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => ResultPage(score: _score),
            ),
          );
        }
      },
      child: Text(_questionNumber < questions.length
          ? 'Próxima pergunta'
          : 'Ver resultado'),
    );
  }
}

class ResultPage extends StatelessWidget {
  const ResultPage({super.key, required this.score});

  final int score;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Text('Sua pontuação foi de $score'),
    ));
  }
}

class OptionsWidget extends StatelessWidget {
  final Question question;
  final ValueChanged<Option> onClickedOption;

  const OptionsWidget(
      {super.key, required this.question, required this.onClickedOption});

  @override
  Widget build(BuildContext context) => SingleChildScrollView(
        child: Column(
          children: question.options
              .map((option) => buildOption(context, option))
              .toList(),
        ),
      );

  Widget buildOption(BuildContext context, Option option) {
    final color = getColorForOption(option, question);
    return GestureDetector(
      onTap: () => onClickedOption(option),
      child: Container(
        height: 70,
        padding: const EdgeInsets.all(8),
        margin: const EdgeInsets.symmetric(vertical: 8),
        decoration: BoxDecoration(
            color: Colors.amber,
            borderRadius: BorderRadius.circular(16),
            border: Border.all(color: color)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              option.text,
              style: const TextStyle(fontSize: 20),
            ),
          ],
        ),
      ),
    );
  }

  Color getColorForOption(Option option, Question question) {
    if (option.isSelected) {
      return option.isSelected ? Colors.blueAccent : Colors.white;
    } else {
      return Colors.grey;
    }
  }
}
