import 'package:ceratocone_app1/src/auth/pages/sign_in_or_register_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../../base/base_screen.dart';

//check if the user is sign in or not
class AuthorizationScreen extends StatelessWidget {
  const AuthorizationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder<User?>(
          stream: FirebaseAuth.instance.authStateChanges(),
          builder: (context, snapshot) {
            //user is logged in if the snapshot has data
            if (snapshot.hasData) {
              return const BaseScreen();
            }
            //user is NOT logged in
            else {
              return const SignInOrRegisterScreen();
            }
          }),
    );
  }
}
