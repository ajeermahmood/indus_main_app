import 'package:get/get.dart';
import 'package:indus_app/controller/agents_page_controller.dart';
import 'package:indus_app/controller/auth_flow_controller.dart';
import 'package:indus_app/controller/bottom_nav_controller.dart';
import 'package:indus_app/controller/home_page_controller.dart';
import 'package:indus_app/controller/properties_page_controller.dart';
import 'package:indus_app/controller/settings_page_controller.dart';
import 'package:indus_app/controller/sign_in_page_controller.dart';
import 'package:indus_app/controller/splash_screen_controller.dart';

class BaseBindings implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SplashScreenViewController());
    Get.lazyPut(() => AuthFlowController());
    Get.lazyPut(() => SignInPageController());
    Get.put(BottomNavbarController());
    Get.lazyPut(() => HomePageController());
    Get.lazyPut(() => PropertiesPageController());
    Get.lazyPut(() => AgentsPageController());
    Get.lazyPut(() => SettingsPageController());
  }
}
