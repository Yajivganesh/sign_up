import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sign_up/config/gaps.dart';
import 'package:sign_up/constants/styles.dart';
import 'package:sign_up/screens/login/login.dart';
import 'package:sign_up/screens/login/signup.dart';


class Welcome extends StatelessWidget {
  const Welcome({super.key});

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 100, horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                  width: AppStyles.getButtonWidth(context),
                  height: AppStyles.getButtonHeight(context),
                  child: ElevatedButton(
                    onPressed: () {
                      Get.to(() => Login());
                    },
                    style: AppStyles.primaryButton,
                    child: const Text(
                      'Login',
                      style: TextStyle(color: AppColors.whiteColor),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                SizedBox(
                  width: AppStyles.getButtonWidth(context),
                  height: AppStyles.getButtonHeight(context),
                  child: ElevatedButton(
                    onPressed: () {
                      Get.to(() => SignUp());
                    },
                    style: AppStyles.secondaryButton,
                    child: const Text(
                      'Register',
                      style: TextStyle(color: AppColors.textColor),
                    ),
                  ),
                ),
              ],
            ),
            gapH20,
            Text(
              'Continue as a guest',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: AppColors.secondaryColor,
                fontSize: screenSize.width * 0.04,
                fontFamily: 'Urbanist',
                fontWeight: FontWeight.w700,
                decoration: TextDecoration.underline,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
