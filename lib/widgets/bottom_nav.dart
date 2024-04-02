import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:indus_app/controller/bottom_nav_controller.dart';
import 'package:indus_app/controller/home_page_controller.dart';
import 'package:indus_app/pages/agents_page.dart';
import 'package:indus_app/pages/home_page.dart';
import 'package:indus_app/pages/settings_page.dart';
import 'package:indus_app/pages/properties_page.dart';
import 'package:indus_app/widgets/drawer_widget.dart';
import 'package:line_icons/line_icons.dart';

class BottomNavbarWidget extends GetView<BottomNavbarController> {
  const BottomNavbarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        backgroundColor: Colors.grey[100],
        title: SizedBox(
          width: 80,
          child: Image.asset(
            'assets/images/indus-logo-extended.png',
          ),
        ),
      ),
      drawer: DrawerWidget(),
      body: Obx(() => getPage(controller.currentIndex.value)),
      bottomNavigationBar: Obx(() => BottomNavigationBar(
            elevation: 20,
            backgroundColor: Colors.white,
            unselectedItemColor: Colors.grey,
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(LineIcons.home),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Icon(LineIcons.building),
                label: 'Properties',
              ),
              BottomNavigationBarItem(
                icon: Icon(LineIcons.users),
                label: 'Agents',
              ),
              BottomNavigationBarItem(
                icon: Icon(LineIcons.cog),
                label: 'Settings',
              ),
            ],
            currentIndex: controller.currentIndex.value,
            selectedItemColor: Colors.blue,
            onTap: (value) {
              controller.currentIndex(value);
              HomePageController homePageController = Get.find();

              if (value == 0) {
                homePageController.bannerIndex(0);
              }
            },
            showUnselectedLabels: true,
          )),
    );
  }
}

Widget getPage(index) {
  switch (index) {
    case 0:
      return const HomePage();
    case 1:
      return const PropertiesPage();
    case 2:
      return const AgentsPage();
    case 3:
      return const SettingsPage();
    default:
      return const HomePage();
  }
}
