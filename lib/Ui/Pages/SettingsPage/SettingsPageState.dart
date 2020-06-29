import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';
import 'package:smart_home/Data/App/DynamicTheme/DynamicThemeChanger.dart';
import 'SettingsPage.dart';

class SettingsPageState extends State<SettingsPage> {
  @override
  Widget build(BuildContext context) {
    var themeChanger = Provider.of<DynamicThemeChanger>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text('Настройки'),
      ),
      body: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Expanded(
                child: Padding(
                    padding: EdgeInsets.only(left: 20),
                    child: Text('Тёмная тема',
                    style: TextStyle(fontSize: 24),)),
              ),
              Switch(
                onChanged: (bool value) {
                  themeChanger.setTheme(value);
                },
                value: themeChanger.isDark,
              )
            ],
          )
        ],
      ),
    );
  }
}
