import 'package:flutter/material.dart';

import 'DogumHaritasi.dart';
import 'Burclar.dart';
import 'GunlukBurcYorumu.dart';
import 'BurcBulma.dart';

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
            leading: Icon(Icons.input),
            title: Text('Hoşgeldiniz'),
            onTap: () => {},
          ),
          ListTile(
            leading: Icon(Icons.star),
            title: Text('Burçlar'),
            onTap: () => selectedItem(context,0),
          ),
          ListTile(
            leading: Icon(Icons.workspaces_filled),
            title: Text('Doğum Haritası'),
            onTap: () => selectedItem(context,1),
          ),
          ListTile(
            leading: Icon(Icons.arrow_upward_rounded),
            title: Text('Yükselen Burç'),
            onTap: () => selectedItem(context,2),
          ),
          ListTile(
            leading: Icon(Icons.wb_sunny_rounded),
            title: Text('Günlük Buç Yorumu'),
            onTap: () => selectedItem(context,3),
          ),
          ListTile(
            leading: Icon(Icons.exit_to_app),
            title: Text('Güle Güle'),
            onTap: () => selectedItem(context,4),
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
            builder: (context) => Burclar(),
        ));
        break;
      case 1:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => DogumHaritasi(),
        ));
        break;
      case 2:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => BurcBulma(),
        ));
        break;
      case 3:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => GunlukBurcYorumu(),
        ));
        break;

    }

 }
}
