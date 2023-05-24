// ignore_for_file: no_leading_underscores_for_local_identifiers

import 'package:ceratocone_app1/src/auth/components/custom_text_field.dart';
import 'package:ceratocone_app1/src/auth/controllers/signup_controller.dart';
import 'package:ceratocone_app1/src/config/custom_colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  static final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    final controller = Get.put(SignUpController());

    final size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: SizedBox(
          height: size.height,
          width: size.width,
          child: Stack(
            children: [
              Column(
                children: [
                  const Expanded(
                    child: Center(
                      child: Text(
                        'Cadastro',
                        style: TextStyle(
                          color: Colors.blueAccent,
                          fontSize: 42,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 3,
                          fontStyle: FontStyle.italic,
                        ),
                      ),
                    ),
                  ),

                  //Formulario

                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 45,
                    ),
                    child: Form(
                      key: _formKey,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          CustomTextField(
                              controller: controller.fullName,
                              icon: Icons.person,
                              label: 'Nome'),
                          CustomTextField(
                              controller: controller.email,
                              icon: Icons.email,
                              label: 'Email'),
                          CustomTextField(
                            controller: controller.password,
                            icon: Icons.lock,
                            label: 'Senha',
                            isSecret: true,
                          ),
                          //Register Button
                          Padding(
                            padding: const EdgeInsets.only(top: 80, bottom: 50),
                            child: SizedBox(
                              height: 50,
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(18))),
                                onPressed: () {
                                  if (_formKey.currentState!.validate()) {
                                    SignUpController.instance.registerUser(
                                        controller.email.text.trim(),
                                        controller.password.text.trim());
                                  }
                                },
                                child: const Text(
                                  'Cadastrar usuário',
                                  style: TextStyle(
                                    fontSize: 18,
                                  ),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),

              //backbutton
              Positioned(
                top: 10,
                left: 10,
                child: SafeArea(
                  child: IconButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    icon: Icon(
                      Icons.arrow_back_ios,
                      color: CustomColors.mediumBrown,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
