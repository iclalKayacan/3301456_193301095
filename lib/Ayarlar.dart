import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:settings_ui/settings_ui.dart';

import 'Diller.dart';

class Ayarlar extends StatefulWidget {
  @override
  _DillerSayfasi createState() => _DillerSayfasi();
}

class _DillerSayfasi extends State<Ayarlar> {
  int dillerIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Ayarlar')),
      body: buildSettingsList(),
    );
  }

  Widget buildSettingsList() {
    return SettingsList(
      sections: [
        SettingsSection(
          title: Text('Genel Ayarlar'),
          tiles: [
            SettingsTile(
              title: Text('Dil Seçenekleri'),
              leading: Icon(Icons.language),
              onPressed: (context) {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => Diller(),
                ));
              },
            ),
          ],
        ),
        SettingsSection(
          title: Text('Hesap Ayarları'),
          tiles: [
            SettingsTile(
                title: Text('Telefon numarası'), leading: Icon(Icons.phone)),
            SettingsTile(
                title: Text('E-mail'), leading: Icon(Icons.email)),
          ],
        ),
        SettingsSection(
          title: Text('Sözleşmeler'),
          tiles: [
            SettingsTile(
                title: Text('Kullanım Şartları'),
                leading: Icon(Icons.description)),
            SettingsTile(
                title: Text('Açık kaynak lisansları'),
                leading: Icon(Icons.collections_bookmark)),
          ],
        ),
      ],
    );
  }
}
