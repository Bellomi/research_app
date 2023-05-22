import 'package:ceratocone_app1/src/config/custom_colors.dart';
import 'package:ceratocone_app1/src/home/home_tab.dart';
import 'package:ceratocone_app1/src/home/test_tab.dart';
import 'package:flutter/material.dart';

class BaseScreen extends StatefulWidget {
  const BaseScreen({super.key});

  @override
  State<BaseScreen> createState() => _BaseScreenState();
}

class _BaseScreenState extends State<BaseScreen> {
  int currentIndex = 0;
  final pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        physics: const NeverScrollableScrollPhysics(),
        controller: pageController,
        children: [
          const HomeTab(),
          const TestTab(),
          Container(color: Colors.blueAccent),
          Container(color: Colors.cyanAccent),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: (index) {
          setState(() {
            currentIndex = index;
            pageController.jumpToPage(index);
          });
        },
        type: BottomNavigationBarType.fixed,
        backgroundColor: CustomColors.customBackColor,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.question_mark),
            label: 'O que é?',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.paste_sharp),
            label: 'Teste',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.local_pharmacy_outlined),
            label: 'Tratamento',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_2_outlined),
            label: 'Perfil',
          ),
        ],
      ),
    );
  }
}
