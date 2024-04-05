import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignUpPageController extends GetxController {
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  FocusNode focusNodeName = FocusNode();
  FocusNode focusNodeMail = FocusNode();
  FocusNode focusNodePass = FocusNode();

  RxBool hidePassword = true.obs;

  RxBool agreeTerms = false.obs;

  @override
  void onInit() async {
    super.onInit();
  }
}
