import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:sign_up/constants/constants.dart';
import 'package:sign_up/constants/styles.dart';

class CreateNewPassword extends StatefulWidget {
  const CreateNewPassword({super.key});

  @override
  State<CreateNewPassword> createState() => _CreateNewPasswordState();
}

class _CreateNewPasswordState extends State<CreateNewPassword> {
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
                        'Create new password',
                        style: AppStyles.headline1,
                      ),
                    ),
                    SizedBox(
                      width: AppStyles.getButtonWidth(context),
                      height: AppStyles.getButtonHeight(context),
                      child: const Text(
                        "Your new password must be unique from those previously used.",
                        style: TextStyle(
                          color: Color(0xFF8390A1),
                          fontSize: 16,
                          fontFamily: 'Urbanist',
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
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
                          hintText: 'New password',
                          hintStyle: AppStyles.placeHolderStyle,
                          contentPadding: EdgeInsets.all(16),
                          border: InputBorder.none,
                        ),
                      ),
                    ),
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
                          hintText: 'Confirm password',
                          hintStyle: AppStyles.placeHolderStyle,
                          contentPadding: EdgeInsets.all(16),
                          border: InputBorder.none,
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
                          Get.to(() => const CreateNewPassword());
                        },
                        style: AppStyles.primaryButton,
                        child: const Text(
                          'Proceed',
                          style: TextStyle(color: AppColors.whiteColor),
                        ),
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
