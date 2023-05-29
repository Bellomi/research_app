import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../../config/custom_colors.dart';
import '../components/Button.dart';
import '../components/custom_text_field.dart';

class ForgotPasswordScreen extends StatefulWidget {
  const ForgotPasswordScreen({Key? key}) : super(key: key);

  @override
  State<ForgotPasswordScreen> createState() => _ForgotPasswordScreenState();
}

class _ForgotPasswordScreenState extends State<ForgotPasswordScreen> {
  final emailController = TextEditingController();

  @override
  void dispose() {
    emailController.dispose();
    super.dispose();
  }

  Future passwordReset() async {
    try {
      await FirebaseAuth.instance
          .sendPasswordResetEmail(email: emailController.text.trim());
      showDialog(
          context: context,
          builder: (context) {
            return AlertDialog(
              backgroundColor: Colors.green,
              content: Text('Link enviado para seu email.',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            );
          },
      );
    } on FirebaseAuthException catch (e) {
      showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            backgroundColor: Colors.green,
            content: Text(
              e.message.toString(),
              style: const TextStyle(
                color: Colors.white,
              ),
            ),
          );
        },
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(25),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Insira seu email e você receberá um link para resetar sua senha',
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 22,
                  color: CustomColors.darkestBlue,
                  fontStyle: FontStyle.italic),
            ),
            const SizedBox(height: 30),
            CustomTextField(
              controller: emailController,
              hintText: 'Email',
              obscureText: false,
            ),
            ButtonNext(
              text: 'Resetar senha',
              onTap: passwordReset,
            ),
          ],
        ),
      ),
    );
  }
}
