class Question {
  int questionId;
  String question;
  List<Option> options;

  Question({
    required this.questionId,
    required this.question,
    required this.options,
  });
}

class Option {
  final int optionId;
  final String text;
  late final bool isSelected;

  Option(
      {required this.optionId, required this.text, required this.isSelected});
}

final questions = [
  Question(
      questionId: 1,
      question:
          'Quanto sua visão interfere com o uso de uma tela de computador?',
      options: [
        Option(optionId: 0, text: 'Não aplicável', isSelected: false),
        Option(optionId: 1, text: 'De modo algum', isSelected: false),
        Option(optionId: 2, text: 'Pouco', isSelected: false),
        Option(optionId: 3, text: 'Bastante', isSelected: false),
        Option(optionId: 4, text: 'Muito', isSelected: false),
      ]),
  Question(
      questionId: 2,
      question: 'Quanto sua visão interfere para dirigir durante o dia?',
      options: [
        Option(optionId: 0, text: 'Não aplicável', isSelected: false),
        Option(optionId: 1, text: 'De modo algum', isSelected: false),
        Option(optionId: 2, text: 'Pouco', isSelected: false),
        Option(optionId: 3, text: 'Bastante', isSelected: false),
        Option(optionId: 4, text: 'Muito', isSelected: false),
      ]),
  Question(
      questionId: 3,
      question: 'Quanto sua visão interfere para dirigir durante a noite?',
      options: [
        Option(optionId: 0, text: 'Não aplicável', isSelected: false),
        Option(optionId: 1, text: 'De modo algum', isSelected: false),
        Option(optionId: 2, text: 'Pouco', isSelected: false),
        Option(optionId: 3, text: 'Bastante', isSelected: false),
        Option(optionId: 4, text: 'Muito', isSelected: false),
      ]),
  Question(
      questionId: 4,
      question:
          'Quanto sua visão interfere com a leitura de sinais de trânsito?',
      options: [
        Option(optionId: 0, text: 'Não aplicável', isSelected: false),
        Option(optionId: 1, text: 'De modo algum', isSelected: false),
        Option(optionId: 2, text: 'Pouco', isSelected: false),
        Option(optionId: 3, text: 'Bastante', isSelected: false),
        Option(optionId: 4, text: 'Muito', isSelected: false),
      ]),
];


//   static List<Question> questions = [
//     Question(
//         questionId: 1,
//         question:
//             'Quanto sua visão interfere com o uso de uma tela de computador?'),
//     Question(
//         questionId: 2,
//         question: 'Quanto sua visão interfere para dirigir durante o dia?'),
//     Question(
//         questionId: 3,
//         question: 'Quanto sua visão interfere para dirigir durante a noite?'),
//     Question(
//         questionId: 4,
//         question:
//             'Quanto sua visão interfere com a leitura de sinais de trânsito?'),
//     Question(
//         questionId: 5, question: 'Quanto sua visão interfere em assistir TV?'),
//   ];
// }

//     '3. ',
//     '4. ',
//     '5. Quanto sua visão interfere em assistir TV?',
//     '6. Quanto sua visão interfere em subir ou descer degraus?',
//     '7. Quanto sua visão interfere em evitar objetos no seu caminho?',
//     '8. Quanto sua visão interfere na sua capacidade de fazer seu trabalho?',
//     '9. Quanto sua visão interfere em enxergar a distância?',
//     '10. Quanto que luzes em sua direção interferem com sua habilidade de enxergar para realizar suas tarefas?',
//     '11. Quanto sua visão interfere em fazer tarefas para perto?',
//     '12. Quanto sua visão interfere em fazer o seu hobby (passatempo)?',
//     '13. Quanto sua visão interfere em reconhecer rostos faces?',
//     '14. Quanto sua visão interfere em enxergar com pouca luz?',
//     '15. Quanto sua visão interfere em fazer tarefas domésticas? (ex. Limpar, passar roupa, lavar, etc)',
//     '16. Quanto sua visão interfere para identificar profundidade das coisas?',
//     '17. Quanto sua visão interfere para enxergar objetos pequenos a longas distâncias? (por exemplo: pipas, aviões no céu)',
//     '18. Quanto sua visão interfere em atividades de observação? (ex. Câmera, microscópio, binóculos, etc)',
//     '1. Quanto você se sente incomodado com visão distorcida?',
//     '2. Quanto você se sente incomodado por ofuscamento e necessidade de usar óculos escuros o tempo todo?',
//     '3. Quanto que um dia ensolarado interfere na sua capacidade de enxergar, de fazer suas tarefas?',
//     '4. Quanto você se sente incomodado com o uso de lentes de contato rígidas?',
//     '5. Quanto você se sente incomodado com dores de cabeça decorrentes do uso de óculos ou lentes de contato?',
//     '6. Quanto você se sente incomodado por sintomas de olho seco?',
//     '7. Quanto você se sente incomodado em dias com muito vento?',
//     '8. Quanto você se sente incomodado quando está cansado?',
//     '9. Quanto você se sente incomodado em dias com ar seco?',
//     '10. Quanto você se sente incomodado em dias com poeira?',
//     '11. Quanto você se sente incomodado em locais com poluição no ar?',
//   ];
// }
