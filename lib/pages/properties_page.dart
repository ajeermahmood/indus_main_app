import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:indus_app/controller/properties_page_controller.dart';

class PropertiesPage extends GetView<PropertiesPageController> {
  const PropertiesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Properties'),
    );
  }
}
