import 'package:appwrite_getx/controllers/data_controller.dart';
import 'package:get/get.dart';

import '../controllers/splash_controller.dart';

class SplashBinding extends Bindings {
  @override
  void dependencies() {
    //todo change Get.lazyPut to Get.put or controller wasn't inited
    Get.put<SplashController>(
      SplashController(),
    );

  }
}
