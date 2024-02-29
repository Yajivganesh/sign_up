import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AppStyles {
  static const TextStyle headline1 = TextStyle(
    color: Color(0xFF1E232C),
    fontSize: 30,
    fontFamily: 'Urbanist',
    fontWeight: FontWeight.w700,
  );
  static double getButtonWidth(BuildContext context) {
    return MediaQuery.of(context).size.width * 0.87;
  }

  static double getButtonHeight(BuildContext context)  =>MediaQuery.of(context).size.height * 0.07;

  static double getInputHeight(BuildContext context) {
    return MediaQuery.of(context).size.height * 0.1;
  }

  static const TextStyle headline2 = TextStyle(
    fontSize: 20.0,
    fontWeight: FontWeight.bold,
    color: AppColors.textColor
  );
  static const TextStyle placeHolderStyle = TextStyle(
    color: Color(0xFF8390A1),
    fontSize: 16,
    fontFamily: 'Urbanist',
    fontWeight: FontWeight.w500,
    height: 0.08,
  );

  static const TextStyle bodyText = TextStyle(
    fontSize: 18.0,
    fontFamily: 'Urbanist',
    fontWeight: FontWeight.w500,
    color: AppColors.textColor,
  );

  static ButtonStyle primaryButton = ButtonStyle(
    backgroundColor: MaterialStateProperty.all<Color>(AppColors.primaryColor),
    textStyle: MaterialStateProperty.all<TextStyle>(
      const TextStyle(
        fontSize: 18,
        fontFamily: 'Urbanist',
        color: AppColors.whiteColor,
        fontWeight: FontWeight.bold,
      ),
    ),
    shape: MaterialStateProperty.all<OutlinedBorder>(
      RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8.0), 
      ),
    ),
  );

  static ButtonStyle secondaryButton = ButtonStyle(
    backgroundColor: MaterialStateProperty.all<Color>(AppColors.whiteColor),
    textStyle: MaterialStateProperty.all<TextStyle>(
      const TextStyle(
        fontSize: 20,
        fontFamily: 'Urbanist',
        color: AppColors.textColor,
        fontWeight: FontWeight.bold,
      ),
    ),
    shape: MaterialStateProperty.all<OutlinedBorder>(
      RoundedRectangleBorder(
        side: const BorderSide(color: AppColors.textColor),
        borderRadius: BorderRadius.circular(8.0), 
      ),
    ),
  );
  static BoxDecoration containerDecoration = BoxDecoration(
    borderRadius: BorderRadius.circular(8),
    border: Border.all(
      width: 1,
      color: const Color.fromRGBO(218, 218, 218, 1),
    ),
  );
  static BoxDecoration containerDecorationElevated = BoxDecoration(
    borderRadius: BorderRadius.circular(8.0),
    color: AppColors.whiteColor,
    boxShadow: [
      BoxShadow(
        color: AppColors.shadowColor,
        spreadRadius: 2,
        blurRadius: 5,
        offset: const Offset(0, 1),
      ),
    ],
  );
}

class AppTheme {
  static ThemeData defaultTheme = ThemeData(
    primaryColor: AppColors.primaryColor,
    hintColor: AppColors.secondaryColor,
    scaffoldBackgroundColor: AppColors.whiteColor,
    appBarTheme: const AppBarTheme(
      backgroundColor: AppColors.primaryColor, systemOverlayStyle: SystemUiOverlayStyle.dark,
    ),
    textTheme: const TextTheme(
      bodyLarge: AppStyles.bodyText,
      bodyMedium: AppStyles.bodyText,
      displayLarge: AppStyles.headline1,
      displayMedium: AppStyles.headline2,
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(AppColors.primaryColor),
        textStyle: MaterialStateProperty.all<TextStyle>(
          const TextStyle(
            fontSize: 18,
            fontFamily: 'Urbanist',
            color: AppColors.whiteColor,
            fontWeight: FontWeight.bold,
          ),
        ),
        shape: MaterialStateProperty.all<OutlinedBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8.0),
          ),
        ),
      ),
    ),
    outlinedButtonTheme: OutlinedButtonThemeData(
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(AppColors.whiteColor),
        textStyle: MaterialStateProperty.all<TextStyle>(
          const TextStyle(
            fontSize: 20,
            fontFamily: 'Urbanist',
            color: AppColors.textColor,
            fontWeight: FontWeight.bold,
          ),
        ),
        shape: MaterialStateProperty.all<OutlinedBorder>(
          RoundedRectangleBorder(
            side: const BorderSide(color: AppColors.textColor),
            borderRadius: BorderRadius.circular(8.0),
          ),
        ),
      ),
    ),
  );
}

class AppColors {
  static const Color primaryColor = Color(0xFF1E232C);
  static const Color secondaryColor = Color(0xFF34C2C1);
  static const Color textColor = Colors.black;
  static const Color whiteColor = Colors.white;
  static const Color errorColor = Colors.white;
  static  Color shadowColor = Colors.grey.withOpacity(0.5);
}