import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OtpController extends GetxController {
  RxList<TextEditingController> otpControllers = List.generate(
    6,
    (index) => TextEditingController(),
  ).obs;

  @override
  void onClose() {
    for (var controller in otpControllers) {
      controller.dispose();
    }
    super.onClose();
  }

  String getOtpValue() {
    return otpControllers.map((controller) => controller.text).join();
  }
}
