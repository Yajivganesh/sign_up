import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:sign_up/constants/constants.dart';
import 'package:sign_up/constants/styles.dart';
import 'package:sign_up/controllers/otp_controller.dart';
import 'package:sign_up/screens/home/home.dart';
import 'package:sign_up/widgets/widgets.dart';

class OTPScreen extends StatefulWidget {
  const OTPScreen({super.key});

  @override
  State<OTPScreen> createState() => _OTPScreenState();
}

class _OTPScreenState extends State<OTPScreen> {
  @override
  void initState() {
    Get.put(OtpController());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 50, horizontal: 20),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
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
            SizedBox(height: AppStyles.getButtonHeight(context)),
            Column(
              children: [
                Column(
                  children: [
                    SizedBox(
                      width: AppStyles.getButtonWidth(context),
                      child: const Text(
                        'OTP Verification',
                        style: AppStyles.headline1,
                      ),
                    ),
                    SizedBox(
                      width: AppStyles.getButtonWidth(context),
                      height: AppStyles.getButtonHeight(context),
                      child: const Text(
                        "Enter the verification code we just sent on your email address",
                        style: TextStyle(
                          color: Color(0xFF8390A1),
                          fontSize: 16,
                          fontFamily: 'Urbanist',
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: AppStyles.getButtonWidth(context),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: List.generate(
                          6,
                          (index) => buildOtpTextField(index, context),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 50,
                    ),
                    SizedBox(
                      width: AppStyles.getButtonWidth(context),
                      height: AppStyles.getButtonHeight(context),
                      child: ElevatedButton(
                        onPressed: () {
                          Get.to(const Home());
                        },
                        style: AppStyles.primaryButton,
                        child: const Text(
                          'Verify',
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
                                  text: 'Didn’t received code? ',
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
                            onPressed: () {},
                            child: const Text(
                              'Resend',
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
                ),
              ],
            ),
          ]),
        ),
      ),
    );
  }
}
