import 'package:get/get.dart';
import 'package:appwrite/appwrite.dart' as app;

class DataController extends GetxController {

  app.Client client = app.Client();
  late app.Storage storage;
  late app.Databases database;




  @override
  void onInit() {
    super.onInit();
    client
        .setEndpoint('')
        .setProject('');

    database = app.Databases(client);
    storage = app.Storage(client);
  }

}