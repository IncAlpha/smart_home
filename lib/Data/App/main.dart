import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:smart_home/Data/App/DynamicTheme/DynamicThemeChanger.dart';
import 'package:smart_home/Ui/Pages/MainPage/MainPage.dart';

void main() {
  runApp(SmartHomeApp());
}

class SmartHomeApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<DynamicThemeChanger>(
      create: (BuildContext context) {
        return DynamicThemeChanger(ThemeData.light());
      },
      child: DynamicThemeApp(),
    );
  }
}

class DynamicThemeApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final themeChanger = Provider.of<DynamicThemeChanger>(context);

    return MaterialApp(
        title: 'SmartHome',
        theme: themeChanger.theme,
        home: MainPage(title: 'SmartHome'));
  }
}
