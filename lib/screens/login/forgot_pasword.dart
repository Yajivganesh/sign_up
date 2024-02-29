import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:sign_up/constants/constants.dart';
import 'package:sign_up/constants/styles.dart';
import 'package:sign_up/screens/login/otp_screen.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({super.key});

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 50, horizontal: 20),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
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
                child: SvgPicture.asset(backIcon)),
          ),
          const SizedBox(height: 100),
          Column(
            children: [
              SizedBox(
                width: AppStyles.getButtonWidth(context),
                child: const Text(
                  'Forgot password?',
                  style: AppStyles.headline1,
                ),
              ),
              SizedBox(
                width: AppStyles.getButtonWidth(context),
                height: AppStyles.getButtonHeight(context),
                child: const Text(
                  "Don't worry! It occurs. Please enter the email address or phone number linked with your account.",
                  style: TextStyle(
                    color: Color(0xFF8390A1),
                    fontSize: 16,
                    fontFamily: 'Urbanist',
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: AppStyles.getButtonHeight(context),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Container(
                width: AppStyles.getButtonWidth(context),
                height: AppStyles.getButtonHeight(context),
                margin: const EdgeInsets.symmetric(vertical: 5),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(
                    width: 1,
                    color: const Color.fromRGBO(218, 218, 218, 1),
                  ),
                ),
                child: TextFormField(
                  decoration: const InputDecoration(
                    fillColor: AppColors.whiteColor,
                    hintText: 'Enter your email or phone no',
                    hintStyle: AppStyles.placeHolderStyle,
                    contentPadding: EdgeInsets.all(16),
                    border: InputBorder.none,
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                width: AppStyles.getButtonWidth(context),
                height: AppStyles.getButtonHeight(context),
                child: ElevatedButton(
                  onPressed: () {
                    Get.to(()=>const OTPScreen());
                  },
                  style: AppStyles.primaryButton,
                  child: const Text(
                    'Send Code',
                    style: TextStyle(color: AppColors.whiteColor),
                  ),
                ),
              ),
            ],
          ),
        ]),
      ),
    );
  }
}
