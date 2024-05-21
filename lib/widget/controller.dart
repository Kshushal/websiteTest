import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MainController extends GetxController {
  RxString selectedTheme = 'Light'.obs;
  var cardSwitch = true.obs;
  void toggleSwitch() => cardSwitch.value = !cardSwitch.value;

  void changeTheme(String value) {
    selectedTheme.value = value;

    if (value == 'Dark') {
      Get.changeTheme(ThemeData.dark());
    } else {
      Get.changeTheme(ThemeData.light());
    }
    update();
  }
}
