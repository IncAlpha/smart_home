import 'package:flutter/material.dart';

class DynamicThemeChanger with ChangeNotifier {
  ThemeData _currentTheme;

  bool _isDark = false;

  get isDark => _isDark;

  get theme => _currentTheme;

  set _theme(ThemeData theme) {
    _currentTheme = theme;
    notifyListeners();
  }

  DynamicThemeChanger(ThemeData defaultTheme) {
    _theme = defaultTheme;
  }

  void setTheme(bool dark) {
    _isDark = dark;
    _updateTheme();
  }

  void _updateTheme() {
    _theme = _isDark ? ThemeData.dark() : ThemeData.light();
  }
}
