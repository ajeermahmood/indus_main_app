import 'package:get/get.dart';
import 'package:indus_app/routes/app_routes.dart';

class SplashScreenViewController extends GetxController {
  @override
  void onInit() async {
    super.onInit();

    Future.delayed(const Duration(seconds: 2), () {
      Get.offAllNamed(AppRoutes.base);
    });
  }
}
