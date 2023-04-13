import 'package:flutter/material.dart';

import '../pages/Ayarlar.dart';
import '../pages/BurcUyumu.dart';
import '../pages/BurcunuOgren.dart';
import '../pages/DogumHaritasi.dart';
import '../pages/GunlukBurcYorumu.dart';
import '../pages/Haberler.dart';
import '../pages/YukselenBurc.dart';


class NavBar extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(children: [
        UserAccountsDrawerHeader(
          accountName: Text(
            'İclal KAYACAN',
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
            ),
          ),
          accountEmail: Text(
            'iclalkayacan5555@gmail.com',
            style: TextStyle(
              color: Colors.white,
              fontSize: 15,
            ),
          ),
          currentAccountPicture: CircleAvatar(
            maxRadius: 50.0,
            backgroundColor: Colors.white,
            child: Text("İK"),
          ),
        ),

        ListTile(
          leading: Icon(Icons.star),
          title: Text('Burcunu Öğren'),
          onTap: () => selectedItem(context, 0),
        ),
        ListTile(
          leading: Icon(Icons.workspaces_filled),
          title: Text('Doğum Haritası'),
          onTap: () => selectedItem(context, 1),
        ),
        ListTile(
          leading: Icon(Icons.arrow_upward_rounded),
          title: Text('Yükselen Burç'),
          onTap: () => selectedItem(context, 2),
        ),
        ListTile(
          leading: Icon(Icons.wb_sunny_rounded),
          title: Text('Günlük Buç Yorumu'),
          onTap: () => selectedItem(context, 3),
        ),
        ListTile(
          leading: Icon(Icons.newspaper),
          title: Text('Astroloji Haberleri'),
          onTap: () => selectedItem(context, 4),
        ),
        ListTile(
          leading: Icon(Icons.accessibility),
          title: Text('Burç Uyumu'),
          onTap: () => selectedItem(context, 5),
        ),
        ListTile(
          leading: Icon(Icons.settings),
          title: Text('Ayarlar'),
          onTap: () => selectedItem(context, 6),
        ),
      ],
      ),
    );

  }
}

void selectedItem(BuildContext context, int index) {
  Navigator.of(context).pop();

  switch (index) {
    case 0:
      Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => BurcunuOgren(),
      ));
      break;
    case 1:
      Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => DogumHaritasi(),
      ));
      break;
    case 2:
      Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => YukselenBurc(),
      ));
      break;
    case 3:
      Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => GunlukBurcYorumu(),
      ));
      break;
    case 4:
      Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => Haberler(),
      ));
      break;
    case 5:
      Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => BurcUyumu(),
      ));
      break;
    case 6:
      Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => Ayarlar(),
      ));
      break;
  }
}
