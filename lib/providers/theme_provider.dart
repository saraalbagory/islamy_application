import 'package:flutter/material.dart';
import 'package:islamy_application/user_preference.dart';

class ThemeProvider with ChangeNotifier {
  static final UserPreference pref=UserPreference();
 ThemeMode appThemeMode = ThemeMode.light;
  String language = "en";

  ThemeProvider() {
    _loadPreference();
  }

  void changeLanguage(String value) {
    language = value;
    pref.saveLocalePreference(value);
    notifyListeners();
  }
   bool get isDark => appThemeMode == ThemeMode.dark;
  
  void changeThemeMode(ThemeMode mode) {
    appThemeMode = mode;
    pref.saveThemePreference(isDark);
    notifyListeners();
  }

 
  Future<void> _loadPreference() async {
    bool isDark = await pref.getThemePreference();
    String language = await pref.getLocalePreference();

    appThemeMode = isDark ? ThemeMode.dark : ThemeMode.light;
    language = language??"en";

    notifyListeners(); 
  }
}