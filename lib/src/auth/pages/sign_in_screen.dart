import 'package:ceratocone_app1/src/auth/components/Button.dart';
import 'package:ceratocone_app1/src/auth/components/custom_text_field.dart';
import 'package:ceratocone_app1/src/auth/services/auth_service.dart';
import 'package:ceratocone_app1/src/config/custom_colors.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'forgot_password.dart';

class SignInScreen extends StatefulWidget {
  final Function()? onTap;

  const SignInScreen({super.key, required this.onTap});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  //test editing controllers
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  //sign user in method
  void signUserIn() async {
    //show loading circle
    showDialog(
      context: context,
      builder: (context) {
        return const Center(
          child: CircularProgressIndicator(),
        );
      },
    );

    //try sign in
    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: emailController.text,
        password: passwordController.text,
      );
      //pop loading circle
      Navigator.pop(context);
    } on FirebaseAuthException catch (e) {
      Navigator.pop(context);

      //WRONG EMAIL
      if (e.code == 'user-not-found') {
        //show error to user
        wrongEmailMessage();
      }

      //WRONG PASSWORD
      else if (e.code == 'wrong-password') {
        wrongPasswordMessage();
      }
    }
  }

  void wrongEmailMessage() {
    showDialog(
      context: context,
      builder: (context) {
        return const AlertDialog(
          backgroundColor: Colors.green,
          title: Center(
            child: Text(
              'Usuário não encontrado. Tente se cadastrar ou entrar com seu Gmail.',
              style: TextStyle(color: Colors.white),
            ),
          ),
        );
      },
    );
  }

  void wrongPasswordMessage() {
    showDialog(
      context: context,
      builder: (context) {
        return const AlertDialog(
          backgroundColor: Colors.green,
          title: Center(
            child: Text(
              'Senha incorreta. Tente novamente ou acesse "esqueceu sua senha"',
              style: TextStyle(color: Colors.white),
            ),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        systemOverlayStyle: const SystemUiOverlayStyle(
          statusBarColor: Colors.white,
          statusBarIconBrightness: Brightness.dark,
          statusBarBrightness: Brightness.dark,
        ),
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("assets/images/olhoappicone.png", height: 200),

            const SizedBox(height: 40),

            //email field
            CustomTextField(
              controller: emailController,
              hintText: 'Email',
              obscureText: false,
            ),

            const SizedBox(height: 20),
            //password field
            CustomTextField(
              controller: passwordController,
              hintText: 'Senha',
              obscureText: true,
            ),
            const SizedBox(height: 10),

            Padding(
              padding: EdgeInsets.symmetric(horizontal: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return const ForgotPasswordScreen();
                          },
                        ),
                      );
                    },
                    child: const Text(
                      'Esqueceu a senha?',
                      style: TextStyle(
                          color: Colors.blueAccent,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 5),

            ButtonNext(
              text: 'ENTRAR',
              onTap: signUserIn,
            ),

            const SizedBox(height: 5),

            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 25),
              child: Row(
                children: [
                  Expanded(
                    child: Divider(thickness: 0.5, color: Colors.blueAccent),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Text(
                      'Ou',
                      style: TextStyle(color: Colors.blueAccent),
                    ),
                  ),
                  Expanded(
                    child: Divider(thickness: 0.5, color: Colors.blueAccent),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 15),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: GestureDetector(
                onTap: () => AuthService().signInWithGoogle(),
                child: Container(
                  padding: const EdgeInsets.symmetric(
                    vertical: 4,
                  ),
                  decoration: BoxDecoration(
                    border: Border.all(color: CustomColors.darkestBlue),
                    borderRadius: BorderRadius.circular(16),
                    color: Colors.white30,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset("assets/images/ic_google.png", height: 40),
                        const Text(
                          'Entrar com Gmail',
                          style: TextStyle(
                            fontSize: 20,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),

            const SizedBox(height: 20),

            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Para se cadastrar:',
                  style: TextStyle(fontSize: 18),
                ),
                const SizedBox(width: 4),
                GestureDetector(
                  onTap: widget.onTap,
                  child: const Text(
                    'Clique aqui',
                    style: TextStyle(
                        color: Colors.blue,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        decoration: TextDecoration.underline,
                        decorationColor: Colors.blue),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
