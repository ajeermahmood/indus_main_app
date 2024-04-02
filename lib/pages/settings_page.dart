import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:get/get.dart';
import 'package:indus_app/controller/settings_page_controller.dart';

class SettingsPage extends GetView<SettingsPageController> {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            ListTile(
              leading: const Icon(FeatherIcons.moon),
              title: Text(
                'Dark Mode',
                style: Theme.of(context).textTheme.titleLarge!.copyWith(
                      color: Theme.of(context).colorScheme.onPrimary,
                    ),
              ),
              trailing: Obx(
                () => Switch(
                  onChanged: (value) => controller.changeThemeMode(value),
                  value: controller.isDarkMode.value,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
