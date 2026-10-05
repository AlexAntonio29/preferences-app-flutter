import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class ThemeProvider extends ChangeNotifier {
  ThemeData currentTheme;

  ThemeProvider({required bool isDarkMode})
    : currentTheme = isDarkMode ? ThemeData.dark() : ThemeData.light();

  isDarkMode() {
    currentTheme = ThemeData.dark();
    notifyListeners();
  }

  isLightmode() {
    currentTheme = ThemeData.light();
    notifyListeners();
  }
}
