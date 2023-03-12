import 'package:appwrite_getx/app/modules/splash/bindings/splash_binding.dart';
import 'package:appwrite_getx/controllers/user_controller.dart';
import 'package:get/get.dart';
import 'package:appwrite_getx/app/routes/app_pages.dart';
import 'package:appwrite/appwrite.dart';
import 'package:get_storage/get_storage.dart';

class SplashController extends GetxController
    with GetSingleTickerProviderStateMixin {
  UserController userController = Get.find();

  @override
  void onInit() {
    super.onInit();
    afterSplash();
  }

  afterSplash() async {
    await GetStorage.init();
    final box = GetStorage();
    String? userName = box.read('username');
    bool alreadyLogged = await userController.hasActiveAccount();
    Future.delayed(Duration(milliseconds: 1200)).then((value) {
      userName == null && !alreadyLogged
          ? Get.offNamed(Routes.SIGNUP)
          : alreadyLogged
              ? Get.offNamed(Routes.HOME)
              : Get.offNamed(Routes.LOGIN);
    });
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
