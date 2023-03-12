import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/splash_controller.dart';

class SplashView extends GetView<SplashController> {
  const SplashView({Key? key}) : super(key: key);
  final scale=8.0; //scale of central elements
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Container(
            decoration: const BoxDecoration(color: Colors.greenAccent),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                flex: 2,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children:  [
                    CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: Get.width/scale,
                      child:  Icon(
                        Icons.toggle_off_outlined,
                        color: Colors.red,
                        size: Get.width/scale,
                      ),
                    ),
                     SizedBox(height: scale*2,),
                    const Text(
                      "Appwrite + GetX demo",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 24.0,
                          color: Colors.black),
                    )
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
