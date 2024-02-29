// input_controller.dart

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class InputController extends GetxController {
  Map<String, TextEditingController> textControllers = {};

  @override
  void onClose() {
    textControllers.forEach((key, controller) {
      controller.dispose();
    });
    super.onClose();
  }

  TextEditingController getOrCreateController(String key) {
    if (!textControllers.containsKey(key)) {
      textControllers[key] = TextEditingController();
    }
    return textControllers[key]!;
  }

  String getTextValue(String key) {
    return textControllers[key]?.text ?? '';
  }
}

class SignUpController extends InputController {
  late TextEditingController usernameController;
  late TextEditingController emailController;
  late TextEditingController passwordController;
  late TextEditingController confirmPasswordController;

  SignUpController() {
    usernameController = getOrCreateController('username');
    emailController = getOrCreateController('email');
    passwordController = getOrCreateController('password');
    confirmPasswordController = getOrCreateController('confirmPassword');
  }

  // SignUp specific logic
  Map<String, String> getSignupCredentials() {
    return {
      'username': getTextValue('username'),
      'email': getTextValue('email')
    };
  }

   signUp() {
    Map<String, String> credentials = getSignupCredentials();
    return credentials;
  }
}

class LoginController extends InputController {
  late TextEditingController loginUsernameController;
  late TextEditingController loginPasswordController;

  LoginController() {
    loginUsernameController = getOrCreateController('loginUsername');
    loginPasswordController = getOrCreateController('loginPassword');
  }
  Map<String, String> getLoginCredentials() {
    return {
      'loginUsername': getTextValue('loginUsername')
    };
  }

   login() {
    Map<String, String> credentials = getLoginCredentials();
    return credentials;
  }
}
