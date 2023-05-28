import 'package:ceratocone_app1/src/auth/register_screen.dart';
import 'package:ceratocone_app1/src/auth/sign_in_screen.dart';
import 'package:flutter/material.dart';

class SignInOrRegisterScreen extends StatefulWidget {
  const SignInOrRegisterScreen({Key? key}) : super(key: key);

  @override
  State<SignInOrRegisterScreen> createState() => _SignInOrRegisterScreenState();
}

class _SignInOrRegisterScreenState extends State<SignInOrRegisterScreen> {
  //initially show login page
  bool showLoginPage = true;

  //toggle between login and register page
  void togglePages() {
    setState(() {
      showLoginPage = !showLoginPage;
    });
  }

  @override
  Widget build(BuildContext context) {
    if(showLoginPage) {
      return SignInScreen(
        onTap: togglePages,
      );
    } else {
      return RegisterScreen(
        onTap: togglePages,
      );
    }
  }
}
