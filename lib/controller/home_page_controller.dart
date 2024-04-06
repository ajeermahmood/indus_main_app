import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:indus_app/api/api_controller.dart';
import 'package:indus_app/model/banner_model.dart';

class HomePageController extends GetxController with StateMixin {
  ApiClass apiClass = ApiClass();

  RxList<BannerModel> bannersList = RxList<BannerModel>();

  RxInt bannerIndex = 0.obs;

  RxBool showBanners = false.obs;

  TextEditingController searchController = TextEditingController();

  FocusNode focusNodeSearch = FocusNode();

  @override
  void onInit() async {
    super.onInit();

    await apiClass
        .getAllBanners()
        .then((value) => bannersList(value))
        .then((value) => change(null, status: RxStatus.success()))
        .then((value) => Future.delayed(
            const Duration(seconds: 1), () => showBanners(true)));
  }
}
