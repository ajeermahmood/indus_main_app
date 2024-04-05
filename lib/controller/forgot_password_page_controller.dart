import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ForgotPasswordPageController extends GetxController {
  TextEditingController emailController = TextEditingController();
  FocusNode focusNodeMail = FocusNode();
  @override
  void onInit() async {
    super.onInit();
  }
}
