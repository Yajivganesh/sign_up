import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sign_up/bindings/app.dart';
import 'package:sign_up/constants/styles.dart';
import 'screens/splash_screen.dart'; 

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'OldRex',
      debugShowCheckedModeBanner: false,
      initialBinding: AppBinding(),
      theme: ThemeData(
        // primarySwatch: Colors.bla,
        primaryColor: AppColors.primaryColor,
        hintColor: AppColors.secondaryColor,
        scaffoldBackgroundColor: AppColors.whiteColor,
        appBarTheme: const AppBarTheme(
          backgroundColor: AppColors.primaryColor,
        ),
        textTheme: const TextTheme(
          bodyLarge: AppStyles.bodyText,
          bodyMedium: AppStyles.bodyText,
          displayLarge: AppStyles.headline1,
          displayMedium: AppStyles.headline2,
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ButtonStyle(
            backgroundColor:
                MaterialStateProperty.all<Color>(AppColors.primaryColor),
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
            backgroundColor:
                MaterialStateProperty.all<Color>(AppColors.whiteColor),
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
      ),
      //  ThemeData(
      //   colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      //   useMaterial3: true,
      // ),
      home: const SplashScreen(), 
      
    );
  }
}
