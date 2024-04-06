import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

enum UserRole { owner, agent, developer }

class FillUserInfoController extends GetxController {
  Rx<UserRole> userRole = UserRole.owner.obs;

  RxInt currentIndex = 0.obs;

  RxList<int> selectedGridPropTypes = RxList([]);

  TextEditingController nameController = TextEditingController();
  TextEditingController phoneController = TextEditingController();

  FocusNode focusNodeName = FocusNode();
  FocusNode focusNodePhone = FocusNode();

  List<Map<String, dynamic>> gridPropTypes = [
    {
      "img": "house.webp",
      "title": "House",
    },
    {
      "img": "villa.webp",
      "title": "Villa",
    },
    {
      "img": "apartment.webp",
      "title": "Apartment",
    },
    {
      "img": "land.webp",
      "title": "Land",
    },
    {
      "img": "penthouse.webp",
      "title": "Penthouse",
    },
    {
      "img": "office.webp",
      "title": "Office",
    },
    {
      "img": "penthouse.webp",
      "title": "Penthouse",
    },
    {
      "img": "office.webp",
      "title": "Office",
    },
  ];

  @override
  void onInit() async {
    super.onInit();
  }
}
