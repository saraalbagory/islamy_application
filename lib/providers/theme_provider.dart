import 'package:flutter/material.dart';

class ThemeProvider with ChangeNotifier {
  ThemeMode appThemeMode = ThemeMode.light;
  String language="ar";
  void changeLanguage(String value)
  {
     language=value;
     notifyListeners();
  }
  void changeThemeMode(ThemeMode mode) {
    appThemeMode = mode;
    notifyListeners();
  }
  bool get isDark=>appThemeMode== ThemeMode.dark;
}
