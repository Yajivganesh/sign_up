import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:sign_up/constants/constants.dart';
import 'package:sign_up/constants/styles.dart';
import 'package:sign_up/controllers/otp_controller.dart';
class CustomButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final ButtonStyle style;
  final EdgeInsetsGeometry? padding;
  final EdgeInsetsGeometry? margin;

  const CustomButton({
    required this.text,
    required this.onPressed,
    required this.style,
    this.padding,
    this.margin,
    Key? key,
    required Color backgroundColor,
    required Color textColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: margin,
      child: ElevatedButton(
        onPressed: onPressed,
        style: style,
        child: Padding(
          padding: padding ?? const EdgeInsets.all(8.0), // Default padding
          child: Text(text),
        ),
      ),
    );
  }
}

Widget buildOtpTextField(int index, context) {
  return Container(
    height: AppStyles.getButtonHeight(context) - 10,
    width: 50,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(8.0),
      color: AppColors.whiteColor,
      border: Border.all(
        width: 1,
        color: AppColors.secondaryColor,
      ),
    ),
    child: TextFormField(
      controller: Get.find<OtpController>().otpControllers[index],
      style: AppStyles.headline2,
      textAlign: TextAlign.center,
      inputFormatters: [
        LengthLimitingTextInputFormatter(1),
        FilteringTextInputFormatter.digitsOnly
      ],
      keyboardType: TextInputType.phone,
      onChanged: (value) {
        final textLength =
            Get.find<OtpController>().otpControllers[index].text.length;
        if (textLength == 0) {
          if (index != 0) {
            FocusScope.of(context).previousFocus();
          }
        } else {
          if (index != 5) {
            FocusScope.of(context).nextFocus();
          }
        }
      },
      decoration: const InputDecoration(
        border: InputBorder.none,
      ),
    ),
  );
}

class InputField extends StatefulWidget {
  final String hintText;
  final TextEditingController controller;
  final bool? leadingIcon;
  final TextInputType keyboardType;
  final ValueChanged<String>? onChanged;
  final String? Function(String?)? validator;

  const InputField({
    Key? key,
    required this.hintText,
    required this.controller,
    this.leadingIcon,
    this.keyboardType = TextInputType.text,
    this.onChanged,
    this.validator,
  }) : super(key: key);

  @override
  State<InputField> createState() => _InputFieldState();
}

class _InputFieldState extends State<InputField> {
  bool obscureText = false;
  @override
  void initState() {
    obscureText = widget.leadingIcon ?? false;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: TextFormField(
        controller: widget.controller,
        obscureText: obscureText,
        obscuringCharacter: "☻",
        keyboardType: widget.keyboardType,
        onChanged: widget.onChanged,
        style: AppStyles.bodyText,
        validator: widget.validator,
        decoration: InputDecoration(
            suffixIcon: widget.leadingIcon ?? false
                ? GestureDetector(
                    onTap: () {
                      setState(() {
                        obscureText = !obscureText;
                      });
                    },
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: SvgPicture.asset(eyeIcon),
                    ),
                  )
                : const SizedBox(),
            fillColor: AppColors.whiteColor,
            hintText: widget.hintText,
            hintStyle: AppStyles.placeHolderStyle,
            contentPadding:
                const EdgeInsets.symmetric(vertical: 20, horizontal: 15),
            focusedBorder: const OutlineInputBorder(
                borderSide: BorderSide(color: AppColors.textColor),
                borderRadius: BorderRadius.all(Radius.circular(8))),
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: AppColors.shadowColor),
                borderRadius: const BorderRadius.all(Radius.circular(8))),
            focusedErrorBorder: const OutlineInputBorder(
                borderSide: BorderSide(color: AppColors.secondaryColor),
                borderRadius: BorderRadius.all(Radius.circular(8))),
            errorBorder: OutlineInputBorder(
                borderSide: BorderSide(color: AppColors.shadowColor),
                borderRadius: const BorderRadius.all(Radius.circular(8))),
            border: OutlineInputBorder(
                borderSide: BorderSide(color: AppColors.shadowColor),
                borderRadius: const BorderRadius.all(Radius.circular(8)))),
      ),
    );
  }
}
