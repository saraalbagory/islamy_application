import 'package:flutter/material.dart';
import 'package:islamy_application/common/app_colors.dart';

class AppTheme {
  static ThemeData lightTheme = ThemeData(
      iconTheme: IconThemeData(
        color: AppColors.mainLightColor,
        fill: 1,
      ),
       colorScheme: ColorScheme(
          brightness: Brightness.light,
          primary:AppColors.mainLightColor ,
          onPrimary: AppColors.mainLightColor,
          secondary:AppColors.mainLightColor,
          onSecondary: AppColors.black,
          error:Colors.red,
          onError: Colors.red,
          surface: Colors.white,
          onSurface:Colors.black),
      primaryColor: AppColors.mainLightColor,
      canvasColor: AppColors.mainLightColor,
      scaffoldBackgroundColor: Colors.transparent,
      appBarTheme: AppBarTheme(
        backgroundColor: Colors.transparent,
        centerTitle: true,
        titleTextStyle: TextStyle(
          fontWeight: FontWeight.w700,
          color: AppColors.black,
          fontSize: 26,
        ),
      ),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        selectedLabelStyle: const TextStyle(
          fontWeight: FontWeight.w700,
        ),
        selectedItemColor: AppColors.black,
        unselectedItemColor: Colors.white,
        elevation: 20,
        selectedIconTheme: IconThemeData(
          fill: 1,
          color: AppColors.black,
        ),
      ));
  static ThemeData darkTheme = ThemeData(
      iconTheme: IconThemeData(color: AppColors.gold),
      colorScheme: ColorScheme(
          brightness: Brightness.dark,
          primary:AppColors.mainDarkColor ,
          onPrimary: AppColors.mainDarkColor,
          secondary: AppColors.gold,
          onSecondary: Colors.white,
          error:Colors.red,
          onError: Colors.red,
          surface: AppColors.mainDarkColor,
          onSurface:Colors.white),
      primaryColor: AppColors.mainDarkColor,
      canvasColor: AppColors.mainDarkColor,
      scaffoldBackgroundColor: Colors.transparent,
      appBarTheme: const AppBarTheme(
        backgroundColor: Colors.transparent,
        centerTitle: true,
        titleTextStyle: TextStyle(
          fontWeight: FontWeight.w700,
          color: Color.fromARGB(255, 255, 255, 255),
          fontSize: 26,
        ),
      ),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        selectedLabelStyle: const TextStyle(
          fontWeight: FontWeight.w700,
        ),
        selectedItemColor: AppColors.gold,
        unselectedItemColor: Colors.white,
        elevation: 20,
        selectedIconTheme: IconThemeData(
          fill: 1,
          color: AppColors.gold,
        ),
      ));
}
