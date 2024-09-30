import 'package:flutter/material.dart';
import 'package:islamy_application/common/app_colors.dart';

class AppTheme {
  static ThemeData lightTheme = ThemeData(
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
        selectedItemColor: AppColors.black,
        unselectedItemColor: Colors.white,
        elevation: 20,
        selectedIconTheme: IconThemeData(
          fill: 1,
          color: AppColors.black,
        ),
      ));
  static ThemeData darkTheme = ThemeData(
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
          selectedItemColor: AppColors.gold,
          unselectedItemColor: Colors.white,
          elevation: 20,selectedIconTheme: IconThemeData(
          fill: 1,
          color: AppColors.gold,
        ),));
}
