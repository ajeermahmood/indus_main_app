import 'package:get/get.dart';
import 'package:indus_app/bindings/base_bindings.dart';
import 'package:indus_app/pages/splash_screen.dart';
import 'package:indus_app/routes/app_routes.dart';
import 'package:indus_app/widgets/bottom_nav.dart';

class AppPages {
  static final List<GetPage> pages = [
    GetPage(
      name: AppRoutes.splashScreen,
      page: () => const SplashScreen(),
      binding: BaseBindings(),
      transition: Transition.circularReveal,
    ),
    GetPage(
      name: AppRoutes.base,
      page: () => const BottomNavbarWidget(),
      binding: BaseBindings(),
      transition: Transition.circularReveal,
    ),
  ];
}
