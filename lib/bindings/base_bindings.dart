import 'package:get/get.dart';
import 'package:indus_app/controller/bottom_nav_controller.dart';
import 'package:indus_app/controller/splash_screen_controller.dart';

class BaseBindings implements Bindings {
  @override
  void dependencies() {
    Get.put(SplashScreenViewController());
    Get.put(BottomNavbarController());
  }
}
