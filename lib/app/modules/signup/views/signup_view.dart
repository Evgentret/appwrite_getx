import 'package:appwrite_getx/app/widgets/all_textfields.dart';
import 'package:appwrite_getx/app/widgets/auth_button.dart';
import 'package:appwrite_getx/config/theme.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/signup_controller.dart';

class SignupView extends GetView<SignupController> {
  const SignupView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
            child: Stack(
              children: [
                Container(
                  height: Get.height,
                  width: Get.width,
                  color: AppColors.blue,
                ),

                Positioned(
                  top: Get.height * 0.08,
                  child: Container(
                    height: Get.height * 0.9,
                    width: Get.width,
                    decoration: const BoxDecoration(
                        color: AppColors.whiteshade,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(32),
                            topRight: Radius.circular(32))),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 200,
                          width: Get.width * 0.8,
                          margin: EdgeInsets.only(
                              left: Get.width * 0.09),
                          child: Icon(Icons.supervised_user_circle_sharp, size:150),
                        ),
                        const SizedBox(
                          height: 16,
                        ),
                        AuthFormField(
                          headingText: "UserName",
                          hintText: "username",
                          obsecureText: false,
                          suffixIcon: const SizedBox(),
                          maxLines: 1,
                          textInputAction: TextInputAction.done,
                          textInputType: TextInputType.text,
                          controller: controller.usernameTextController,
                        ),
                        const SizedBox(
                          height: 16,
                        ),
                        AuthFormField(
                          headingText: "Email",
                          hintText: "Email",
                          obsecureText: false,
                          suffixIcon: const SizedBox(),
                          maxLines: 1,
                          textInputAction: TextInputAction.done,
                          textInputType: TextInputType.emailAddress,
                          controller: controller.emailTextController,
                        ),
                        const SizedBox(
                          height: 16,
                        ),
                        AuthFormField(
                          maxLines: 1,
                          textInputAction: TextInputAction.done,
                          textInputType: TextInputType.text,
                          controller: controller.passwordTextController,
                          headingText: "Password",
                          hintText: "At least 8 Character",
                          obsecureText: true,
                          suffixIcon: IconButton(
                              icon: const Icon(Icons.visibility), onPressed: () {}),
                        ),
                        const SizedBox(
                          height: 16,
                        ),
                        AuthButton(
                          onTap: () {controller.signUp();},
                          text: 'Sign Up',
                        ),
                        SizedBox(height: 10,),
                        Center(child: Text('Already Have an account?'),),

                          Center(
                            child: GestureDetector(
                              onTap: (){},
                              child:Text('Log In here'),
                            ),
                          ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          )),
    );
  }
}
