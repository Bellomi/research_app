import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignUpController extends GetxController {
  static SignUpController get instance => Get.find();

//textfields controllers to get data from textfields
  final fullName = TextEditingController();
  final email = TextEditingController();
  final password = TextEditingController();

//this function is called by the design
  void registerUser(String email, String password) {}
}
