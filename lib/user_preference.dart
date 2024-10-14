import 'dart:core';

import 'package:shared_preferences/shared_preferences.dart';

class UserPreference {
  static const String themeModeKey="themeMode";
  static const String LocaleCode="LocaleCode";
   
  //// static late SharedPreferences _preferences;
  //  static Future init() async=>
  //  _preferences=await SharedPreferences.getInstance();
//get pref
     Future<bool>   getThemePreference() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getBool(themeModeKey) ?? false;  // Default to light mode
  }
   Future<String> getLocalePreference()async
   {
      final SharedPreferences prefs = await SharedPreferences.getInstance();
      return prefs.getString(LocaleCode)??"en";// Default to English
   }
   //Save Pref
   Future<void> saveThemePreference(bool isDarkMode) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setBool(themeModeKey, isDarkMode);
  }
  Future<void> saveLocalePreference(String locale) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString(LocaleCode, locale);
  }

}