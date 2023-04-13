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
              onPressed: (BuildContext context) {
                changeLanguage(0);
              },
            ),
            SettingsTile(
              title: Text("İngilizce"),
              onPressed: (BuildContext context) {
                changeLanguage(1);
              },
            ),
            SettingsTile(
              title: Text("Almanca"),
              onPressed: (BuildContext context) {
                changeLanguage(2);
              },
            ),
            SettingsTile(
              title: Text("İspanyolca"),
              onPressed: (BuildContext context) {
                changeLanguage(3);
              },
            ),
            SettingsTile(
              title: Text("Fransızca"),
              onPressed: (BuildContext context) {
                changeLanguage(4);
              },
            ),
          ]),
        ],
      ),
    );
  }

  void changeLanguage(int index) {
    setState(() {
      languageIndex = index;
    });
  }
}