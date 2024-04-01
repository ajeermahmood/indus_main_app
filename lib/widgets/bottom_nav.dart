import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:indus_app/controller/bottom_nav_controller.dart';
import 'package:indus_app/pages/agents_page.dart';
import 'package:indus_app/pages/home_page.dart';
import 'package:indus_app/pages/map_page.dart';
import 'package:indus_app/pages/properties_page.dart';
import 'package:indus_app/widgets/navigation_drawer.dart';
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
          width: 65,
          height: 40,
          child: Image.asset(
            'assets/images/indus-logo-extended.png',
          ),
        ),
      ),
      drawer: NavigationDrawerWidget(),
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
                icon: Icon(LineIcons.map),
                label: 'Map',
              ),
            ],
            currentIndex: controller.currentIndex.value,
            selectedItemColor: Colors.blue,
            onTap: (value) {
              controller.currentIndex(value);
            },
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
      return const MapPage();
    default:
      return const HomePage();
  }
}
