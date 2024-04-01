import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:indus_app/controller/agents_page_controller.dart';

class AgentsPage extends GetView<AgentsPageController> {
  const AgentsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Agents'),
    );
  }
}
