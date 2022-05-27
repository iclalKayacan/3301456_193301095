import 'package:flutter/material.dart';

import 'Ayarlar.dart';
import 'BurcunuOgren.dart';
import 'DogumHaritasi.dart';
import 'Burclar.dart';
import 'GunlukBurcYorumu.dart';
import 'BurcBulma.dart';
import 'Haberler.dart';

class NavBar extends StatelessWidget {
  const NavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          UserAccountsDrawerHeader(
            accountName: Text('İclal KAYACAN'),
            accountEmail: Text('iclalkayacan5555@gmail.com'),
            currentAccountPicture: CircleAvatar(
              maxRadius: 50.0,
              backgroundColor: Colors.white,
              child: Text("İK"),
            ),

          ),

          ListTile(
            leading: Icon(Icons.star),
            title: Text('Burcunu Öğren'),
            onTap: () => selectedItem(context,0),
          ),
          ListTile(
            leading: Icon(Icons.star),
            title: Text('Burçlar'),
            onTap: () => selectedItem(context,1),
          ),
          ListTile(
            leading: Icon(Icons.workspaces_filled),
            title: Text('Doğum Haritası'),
            onTap: () => selectedItem(context,2),
          ),
          ListTile(
            leading: Icon(Icons.arrow_upward_rounded),
            title: Text('Yükselen Burç'),
            onTap: () => selectedItem(context,3),
          ),
          ListTile(
            leading: Icon(Icons.wb_sunny_rounded),
            title: Text('Günlük Buç Yorumu'),
            onTap: () => selectedItem(context,4),
          ),
          ListTile(
            leading: Icon(Icons.newspaper),
            title: Text('Astroloji Haberleri'),
            onTap: () => selectedItem(context,5),
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text('Ayarlar'),
            onTap: () => selectedItem(context,6),
          ),
        ],
      ),
    );
  }

 void selectedItem(BuildContext context, int index) {
    Navigator.of(context).pop();

    switch(index) {
      case 0:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => BurcunuOgren(),
        ));
        break;
      case 1:
        Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => Burclar(),
        ));
        break;
      case 2:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => DogumHaritasi(),
        ));
        break;
      case 3:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => BurcBulma(),
        ));
        break;
      case 4:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => GunlukBurcYorumu(),
        ));
        break;
      case 5:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => Haberler(),
        ));
        break;
      case 6:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => Ayarlar(),
        ));
        break;


    }

 }
}
