import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:indus_app/controller/home_page_controller.dart';

class HomePage extends GetView<HomePageController> {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Home'),
    );
  }
}
