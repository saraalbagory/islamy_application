import 'package:flutter/material.dart';

class ThemeProvider with ChangeNotifier {
  ThemeMode appThemeMode = ThemeMode.light;
  changeThemeMode(ThemeMode mode) {
    appThemeMode = mode;
    notifyListeners();
  }
  bool get isDark=>appThemeMode== ThemeMode.dark;
}
