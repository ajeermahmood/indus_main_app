import 'package:get/get.dart';
import 'package:indus_app/bindings/base_bindings.dart';
import 'package:indus_app/pages/auth_flow_end_page.dart';
import 'package:indus_app/pages/auth_flow_page.dart';
import 'package:indus_app/pages/fill_user_info_page.dart';
import 'package:indus_app/pages/forgot_password_page.dart';
import 'package:indus_app/pages/otp_verification_page.dart';
import 'package:indus_app/pages/sign_in_page.dart';
import 'package:indus_app/pages/sign_up_page.dart';
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
      name: AppRoutes.authFlow,
      page: () => const AuthFlowPage(),
      binding: BaseBindings(),
      transition: Transition.circularReveal,
    ),
    GetPage(
      name: AppRoutes.authFlowEnd,
      page: () => const AuthFlowEndPage(),
      binding: BaseBindings(),
      transition: Transition.circularReveal,
    ),
    GetPage(
      name: AppRoutes.signIn,
      page: () => const SignInPage(),
      binding: BaseBindings(),
      transition: Transition.circularReveal,
    ),
    GetPage(
      name: AppRoutes.signUp,
      page: () => const SignUpPage(),
      binding: BaseBindings(),
      transition: Transition.circularReveal,
    ),
    GetPage(
      name: AppRoutes.forgotPassword,
      page: () => const ForgotPasswordPage(),
      binding: BaseBindings(),
      transition: Transition.circularReveal,
    ),
    GetPage(
      name: AppRoutes.otpVerify,
      page: () => const OtpVerificationPage(),
      binding: BaseBindings(),
      transition: Transition.circularReveal,
    ),
    GetPage(
      name: AppRoutes.fillUserInfo,
      page: () => const FillUserInfoPage(),
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
