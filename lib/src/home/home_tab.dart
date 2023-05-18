import 'package:flutter/material.dart';

class HomeTab extends StatelessWidget {
  const HomeTab({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      //AppBar
      appBar: AppBar(
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
          ],
        ),
      ),
    );
  }
}
