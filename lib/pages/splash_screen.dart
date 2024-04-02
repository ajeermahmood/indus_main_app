import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:indus_app/controller/splash_screen_controller.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GetBuilder<SplashScreenViewController>(
        init: SplashScreenViewController(),
        builder: (controller) {
          return SizedBox(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: Image.asset(
              'assets/images/splash-banner.jpg',
              fit: BoxFit.cover,
            ),
          );
        },
      ),
    );
  }
}
