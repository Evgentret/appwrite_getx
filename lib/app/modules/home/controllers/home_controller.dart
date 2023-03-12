import 'package:appwrite_getx/app/widgets/greetings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class HomeController extends GetxController {
  //TODO: Implement HomeController

  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();



  }

  @override
  void onReady() {
    super.onReady();
    initHomeData();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void initHomeData() {
    final box = GetStorage();
    String message='';

    Get.defaultDialog(
      title: 'Hello!',
      content: Greetings(box.read('username'),message),
    );
  }

}
