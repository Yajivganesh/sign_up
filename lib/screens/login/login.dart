import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:sign_up/constants/constants.dart';
import 'package:sign_up/constants/styles.dart';
import 'package:sign_up/controllers/input_controller.dart';
import 'package:sign_up/screens/login/otp_screen.dart';
import 'package:sign_up/screens/login/signup.dart';
import 'package:sign_up/widgets/widgets.dart';

class Login extends StatelessWidget {
  final LoginController loginController = LoginController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 50, horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
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
            Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  SizedBox(
                    width: AppStyles.getButtonWidth(context),
                    height: 100,
                    child: const Text(
                      '👋  Welcome back! Glad to see you, Again!',
                      style: AppStyles.headline1,
                    ),
                  ),
                  InputField(
                    hintText: 'Enter your email or phone no',
                    controller: loginController.loginUsernameController,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter a valid email or a 10-digit mobile number';
                      }
                      if (RegExp(r'^[\w-]+(\.[\w-]+)*@[\w-]+(\.[\w-]+)+$')
                          .hasMatch(value)) {
                        return null;
                      }
                      if (RegExp(r'^[0-9]{10}$').hasMatch(value)) {
                        return null;
                      }
                      return 'Please enter a valid email or a 10-digit mobile number';
                      // try {
                      //   int.parse(value);
                      //   else {
                      //     return 'Please enter a valid 10-digit mobile number';
                      //   }
                      // } catch (e) {
                      //   return 'Please enter a valid email';
                      // }
                    },
                  ),
                ],
              ),
            ),
            Column(
              children: [
                SizedBox(
                  width: AppStyles.getButtonWidth(context),
                  height: AppStyles.getButtonHeight(context),
                  child: ElevatedButton(
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        Get.to(() => const OTPScreen());
                      }
                    },
                    style: AppStyles.primaryButton,
                    child: const Text(
                      'Login',
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
                              text: 'Don’t have an account? ',
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
                          Get.off(SignUp());
                        },
                        child: const Text(
                          'Register',
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
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
