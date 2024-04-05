import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OtpVerificationController extends GetxController {
  TextEditingController otpController = TextEditingController();
  FocusNode focusNodeOtp = FocusNode();

  RxInt start = 30.obs;

  void startTimer() {
    const oneSec = Duration(seconds: 1);
    Timer.periodic(
      oneSec,
      (Timer timer) {
        if (start.value == 0) {
          timer.cancel();
        } else {
          start.value--;
        }
      },
    );
  }

  @override
  void onInit() async {
    super.onInit();
    startTimer();
  }
}
