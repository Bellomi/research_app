import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HomeTab extends StatelessWidget {
  const HomeTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //AppBar
      appBar: AppBar(
        systemOverlayStyle: const SystemUiOverlayStyle(
          statusBarColor: Colors.white,
          statusBarIconBrightness: Brightness.dark,
          statusBarBrightness: Brightness.dark,
        ),
        backgroundColor: Colors.transparent,
        toolbarHeight: 80,
        centerTitle: true,
        title: const Text.rich(
          TextSpan(
            style: TextStyle(
              fontSize: 45,
              fontWeight: FontWeight.bold,
            ),
            children: [
              TextSpan(
                  text: 'Ceratocone',
                  style: TextStyle(
                    color: Colors.blueAccent,
                  )),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 25,
                vertical: 20,
              ),
              child: Text(
                'O ceratocone é uma doença da córnea que evolui, progressivamente, afetando a visão. A córnea funciona como uma lente fixa que fica sobre a íris, a parte colorida dos olhos, e projeta a luz para a retina (imagem 1). Esse problema costuma surgir em jovens (infância e adolescência). Não é algo novo: a primeira descrição detalhada do problema é de 1854!',
                textAlign: TextAlign.justify,
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
            ),
            Column(
              children: [Image.asset('assets/images/cornealens.png')],
            ),
            const Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 25,
                vertical: 20,
              ),
              child: Text(
                'Os sintomas iniciais são piora progressiva do grau do óculos e visão embaçada. A boa notícia é que o tratamento melhorou bastante, e atualmente temos mais opções disponíveis. O problema é bilateral, porém assimetrico; ou seja, as vezes há um olho mais afetado que o outro. Ele também é progressivo: se nada for feito, vai piorando com o tempo, com estabilização em torno dos 35-40 anos de idade. Porém, há casos de progressão mesmo em pacientes mais velhos. O que ocorre é que a córnea, que deveria ser regular, acaba tendo um formato “pontudo”, mais parecido com um cone, o que gera imagens distorcidas. Esse problema está presente em 1-5% da população. Ou seja, não é tão raro!',
                textAlign: TextAlign.justify,
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(
                    20,
                  ),
                  child: Image.asset('assets/images/ceratoconepointy.png'),
                )
              ],
            ),
            const Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 25,
                vertical: 20,
              ),
              child: Text(
                'TITULO',
                textAlign: TextAlign.justify,
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 25,
                vertical: 20,
              ),
              child: Text(
                'descrição',
                textAlign: TextAlign.justify,
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 25,
                vertical: 25,
              ),
              child: Text(
                'Mas por que isso ocorre?',
                textAlign: TextAlign.justify,
                style: TextStyle(
                  fontSize: 33,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 25,
                vertical: 20,
              ),
              child: Text(
                'descrição',
                textAlign: TextAlign.justify,
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
