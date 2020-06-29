import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:smart_home/Data/App/DynamicTheme/DynamicThemeChanger.dart';
import 'package:smart_home/Ui/Pages/SettingsPage/SettingsPage.dart';

import 'MainPage.dart';

class MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("SmartHome"),
          actions: <Widget>[
            IconButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => SettingsPage()));
              },
              icon: Icon(Icons.settings),
            )
          ],
        ),
        body: Center(
          child: Card(child: Text("Welcome to SmartHome")),
        ),
        floatingActionButton: FloatingActionButton.extended(
          onPressed: () {},
          label: Text('Добавить комнату'),
          icon: Icon(Icons.add),
        ));
  }
}
