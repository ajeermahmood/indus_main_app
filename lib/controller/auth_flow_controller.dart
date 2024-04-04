import 'package:get/get.dart';
import 'package:indus_app/routes/app_routes.dart';

class AuthFlowController extends GetxController {
  RxInt currentPage = 0.obs;

  void changePage() {
    currentPage.value++;
    if (currentPage.value == 3) {
      Get.offAllNamed(AppRoutes.authFlowEnd);
    }
  }

  @override
  void onInit() async {
    super.onInit();
  }
}
