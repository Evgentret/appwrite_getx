import 'package:appwrite_getx/config/strings.dart';
import 'package:appwrite_getx/controllers/data_controller.dart';
import 'package:appwrite_getx/controllers/user_controller.dart';
import 'package:flutter/material.dart';
import 'dart:ui' as ui;
import 'package:get/get.dart';
import 'app/routes/app_pages.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Get.put(DataController(), permanent: true);
  Get.put (UserController(), permanent: true);

  runApp(
    GetMaterialApp(
      title: "Appwrite & GetX sample",
      translations: Messages(),
      locale: ui.window.locale,
      fallbackLocale: Locale('en', 'UK'),
      debugShowCheckedModeBanner: false,
      initialRoute: AppPages.INITIAL,
      // routingCallback: (routing) {
      //   al.checkRoute(routing);
      // },
      getPages: AppPages.routes,
    ),
  );
}
