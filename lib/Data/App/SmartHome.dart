import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:smart_home/Ui/Pages/MainPage/MainPage.dart';

class SmartHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SmartHome',
      theme: Theme.of(context),
      home: MainPage(title: 'SmartHome'),
    );
  }
}