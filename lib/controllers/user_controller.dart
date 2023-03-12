import 'package:appwrite_getx/controllers/data_controller.dart';
import 'package:get/get.dart';
import 'package:appwrite/appwrite.dart' as app;

class UserController extends GetxController {

  DataController dataController = Get.find();
  late app.Account account;

  @override
  void onInit() {
    print ('usercontroller init');
    super.onInit();
    initAccount();
  }

  void initAccount() {
    account = app.Account(dataController.client);
  }

  Future<bool> hasActiveAccount() async {
    bool _res = false;
    try {
      await account.get();
      _res = true;
    } on Exception {
      _res = false;
    }
    return _res;
  }

}