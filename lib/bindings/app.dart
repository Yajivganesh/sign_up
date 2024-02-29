import 'package:get/get.dart';
import 'package:sign_up/services/connectivity.dart';

class AppBinding extends Bindings {
  @override
  void dependencies() {
    injectService();
  }

  void injectService() {
    Get.put(ConnectivityService());
  }
}
