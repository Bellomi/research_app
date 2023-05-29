import 'package:flutter/material.dart';

import '../../config/custom_colors.dart';

class ButtonNext extends StatelessWidget {


  const ButtonNext({Key? key, this.onTap, required this.text}) : super(key: key);

  final Function()? onTap;
  final String text;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.all(25),
        child: Container(
            padding: const EdgeInsets.symmetric(
                vertical: 12),
            decoration: BoxDecoration(
                color: CustomColors.darkestBlue,
                borderRadius: BorderRadius.circular(8)),
            child: Center(
              child: Text(
                text,
                style: const TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 2),
              ),
            )),
      ),
    );
  }
}
