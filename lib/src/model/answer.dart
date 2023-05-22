class Answer {
  int answerId;
  String optionName;

  Answer({required this.answerId, required this.optionName});

  static List<Answer> getAnswers() {
    return <Answer>[
      Answer(answerId: 1, optionName: 'Não aplicável'),
      Answer(answerId: 2, optionName: 'De modo algum'),
      Answer(answerId: 3, optionName: 'Pouco'),
      Answer(answerId: 4, optionName: 'Bastante'),
      Answer(answerId: 5, optionName: 'Muito'),
    ];
  }
}
