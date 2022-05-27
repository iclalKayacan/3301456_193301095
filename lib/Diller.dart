import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:settings_ui/settings_ui.dart';


class Diller extends StatefulWidget {
  @override
  _DillerSayfasi createState() => _DillerSayfasi();
}

class _DillerSayfasi extends State<Diller> {
  int languageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Dil Seçenekleri')),
      body: SettingsList(
        sections: [
          SettingsSection(tiles: [
            SettingsTile(
              title: Text("Türkçe"),
              trailing: iconWidget(0),
              onPressed: (BuildContext context) {
                changeLanguage(0);
              },
            ),
            SettingsTile(
              title: Text("İngilizce"),
              trailing: iconWidget(1),
              onPressed: (BuildContext context) {
                changeLanguage(1);
              },
            ),
            SettingsTile(
              title: Text("Almanca"),
              trailing: iconWidget(2),
              onPressed: (BuildContext context) {
                changeLanguage(2);
              },
            ),
            SettingsTile(
              title: Text("İspanyolca"),
              trailing: iconWidget(3),
              onPressed: (BuildContext context) {
                changeLanguage(3);
              },
            ),
            SettingsTile(
              title: Text("Fransızca"),
              trailing: iconWidget(4),
              onPressed: (BuildContext context) {
                changeLanguage(4);
              },
            ),
          ]),
        ],
      ),
    );
  }

  Widget iconWidget(int index) {
    return (languageIndex == index)
        ? Icon(Icons.check, color: Colors.blue)
        : Icon(null);
  }

  void changeLanguage(int index) {
    setState(() {
      languageIndex = index;
    });
  }
}