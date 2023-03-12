import 'package:appwrite_getx/app/routes/app_pages.dart';
import 'package:appwrite_getx/app/widgets/email_verification_dialog.dart';
import 'package:appwrite_getx/controllers/helpers.dart';
import 'package:appwrite_getx/controllers/user_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class SignupController extends GetxController {
  final usernameTextController = TextEditingController();
  final emailTextController = TextEditingController();
  final passwordTextController = TextEditingController();

  String get userName => usernameTextController.text.trim();
  String get email => emailTextController.text.trim();
  String get password => passwordTextController.text.trim();

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void signUp () async {
    UserController userController = Get.find();
    try {
      await userController.account.create(
        userId: randomId(36),
        email: emailTextController.text,
        password: passwordTextController.text,
        name: usernameTextController.text,
      );
      final box = GetStorage();
      box.write('username', usernameTextController.text);
      box.write('email', emailTextController.text);
      try {
        await userController.account.createEmailSession(
          email: emailTextController.text,
          password: passwordTextController.text,
        );
        //user.password = '';

        Get.offNamed(Routes.HOME);

      } on Exception catch (error) {

      }




    } on Exception catch (e) {
      print(e);
      if (!e.toString().contains('user_already_exists')) {

      }
      if (e.toString().contains('general_rate_limit_exceeded')) {

      }
      Get.snackbar('Error', 'Server error on signup');
    }
  }

  Future<bool> isEmailVerified () async {
    bool _verified= false;
    Get.defaultDialog(
      title: 'Please, check your email and proceed to provided link for verification',
      content: EmailVerificationDialog(),
    );



    return _verified;
  }

}
