import 'package:flutter/material.dart';
import 'package:islamy_application/common/app_colors.dart';

class AppTheme {
  static ThemeData lightTheme=ThemeData(
    primaryColor: AppColors.mainLightColor,
    scaffoldBackgroundColor: Colors.transparent,
    appBarTheme: AppBarTheme(
      backgroundColor: Colors.transparent,
      centerTitle: true,
      titleTextStyle: TextStyle(
            fontWeight: FontWeight.w700,
            color: AppColors.black,
            fontSize: 26,
          ),
    )
    
  );
  static ThemeData darkTheme=ThemeData(
    primaryColor: AppColors.mainDarktColor,
     scaffoldBackgroundColor: Colors.transparent,
     appBarTheme: const AppBarTheme(
      backgroundColor: Colors.transparent,
       centerTitle: true,
        titleTextStyle: TextStyle(
            fontWeight: FontWeight.w700,
            color: Color.fromARGB(255, 255, 255, 255),
            fontSize: 26,
          ),
    )
  );
}