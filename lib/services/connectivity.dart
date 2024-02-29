import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';

class ConnectivityService extends GetxService {
  @override
  void onInit() async {
    super.onInit();
    var hasConnection = await InternetConnectionChecker().hasConnection;
    if (!hasConnection) {
      showDialog();
    }

    InternetConnectionChecker().onStatusChange.listen((status) {
      switch (status) {
        case InternetConnectionStatus.connected:
          hideDialogIfOpen();
          break;
        case InternetConnectionStatus.disconnected:
          if (Get.isDialogOpen != true) {
            showDialog();
          }
          break;
      }
    });

    // Future.delayed(const Duration(seconds: 30), () {
    //   listener.cancel();
    // });
  }

  void hideDialogIfOpen() {
    if (Get.isDialogOpen == true) {
      Get.back();
    }
  }

  void showDialog() {
    Get.dialog(
      CupertinoAlertDialog(
        title: Row(children: [
          const Icon(Icons.signal_wifi_off_outlined),
          Container(
              margin: const EdgeInsets.only(left: 5),
              child: const Text('You are currently offline')),
        ]),
        content: const Text(
            'Please turn on network connection to continue using this app'),
      ),
      barrierDismissible: true,
    );
  }
}
