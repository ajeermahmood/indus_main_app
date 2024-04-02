import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:indus_app/shared/shared_prefs.dart';

class SettingsPageController extends GetxController {
  RxBool isDarkMode = false.obs;

  SharedPrefs sharedPrefs = SharedPrefs();

  Future<void> changeThemeMode(bool value) async {
    isDarkMode(value);

    isDarkMode.value
        ? Get.changeThemeMode(ThemeMode.dark)
        : Get.changeThemeMode(ThemeMode.light);

    await sharedPrefs.setUserThemeModePrefs(value);
  }

  @override
  void onInit() async {
    super.onInit();
  }
}
