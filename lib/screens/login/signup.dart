import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:sign_up/constants/constants.dart';
import 'package:sign_up/constants/styles.dart';
import 'package:sign_up/controllers/input_controller.dart';
import 'package:sign_up/screens/login/login.dart';
import 'package:sign_up/widgets/widgets.dart';

class SignUp extends StatelessWidget {
  final SignUpController signUpController = SignUpController();

  SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Stack(
          children: [
            Positioned(
              top: 50,
              child: Container(
                width: 55,
                height: AppStyles.getButtonHeight(context) - 5,
                decoration: ShapeDecoration(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    side: const BorderSide(width: 1, color: Color(0xFFE8ECF4)),
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                child: TextButton(
                  onPressed: () {
                    Get.back();
                  },
                  child: SvgPicture.asset(backIcon),
                ),
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: AppStyles.getButtonWidth(context),
                  child: const Text(
                    '💰 Sell Your Timeless Treasures',
                    style: AppStyles.headline1,
                  ),
                ),
                InputField(
                  hintText: 'Username',
                  controller: signUpController.usernameController,
                ),
                InputField(
                  hintText: 'Email or phone no',
                  controller: signUpController.emailController,
                ),
              ],
            ),
            Positioned(
              bottom: 0,
              child: Column(
                children: [
                  SizedBox(
                    width: AppStyles.getButtonWidth(context),
                    height: AppStyles.getButtonHeight(context),
                    child: ElevatedButton(
                      onPressed: () {
                        Map<String, String> credentials =
                            signUpController.getSignupCredentials();
                        debugPrint(credentials.toString());
                      },
                      style: AppStyles.primaryButton,
                      child: const Text(
                        'Agree and Register',
                        style: TextStyle(color: AppColors.whiteColor),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: AppStyles.getButtonWidth(context),
                    height: AppStyles.getButtonHeight(context),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text.rich(
                          TextSpan(
                            children: [
                              TextSpan(
                                text: 'Go back to login? ',
                                style: TextStyle(
                                  color: Color(0xFF1E232C),
                                  fontSize: 15,
                                  fontFamily: 'Urbanist',
                                  fontWeight: FontWeight.w500,
                                  height: 0.09,
                                  letterSpacing: 0.15,
                                ),
                              ),
                            ],
                          ),
                          textAlign: TextAlign.center,
                        ),
                        TextButton(
                          onPressed: () {
                            Get.off(Login());
                          },
                          child: const Text(
                            'Login now',
                            style: TextStyle(
                              color: Color(0xFF34C2C1),
                              fontSize: 15,
                              fontFamily: 'Urbanist',
                              fontWeight: FontWeight.w700,
                              height: 0.09,
                              letterSpacing: 0.15,
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
