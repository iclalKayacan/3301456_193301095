import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:yan_menu/DetaySayfasi.dart';

class Burclar extends StatelessWidget {
  Burclar({Key? key, image}) : super(key: key);

  List<String> items = [
    'KOÇ',
    'BOĞA',
    'İKİZLER',
    'YENGEÇ',
    'ASLAN',
    'BAŞAK',
    'TERAZİ',
    'AKREP',
    'YAY',
    'OĞLAK',
    'KOVA',
    'BALIK',
  ];

  List<dynamic> tarihler = [
    '21 Mart- 20 Nisan',
    '21 Nisan- 20 Mayıs',
    '21 Mayıs- 20 Haziran',
    '21 Haziran- 22 Temmuz',
    '23 Temmuz- 23 Ağustos',
    '24 Ağustos- 23 Eylül',
    '24 Eylül- 23 Ekim',
    '24 Ekim- 22 Kasım',
    '23 Kasım- 21 Aralık',
    '22 Aralık- 20 Ocak',
    '21 Ocak- 18 Şubat',
    '19 Şubat- 20 Mart',
  ];

  var resim = [
    'assets/images/akrep.jpep',
    "assets/images/aslan.jpeg",
    "assets/images/balik.jpeg",
    "assets/images/basak.jpeg",
    "assets/images/boga.jpeg",
    "assets/images/ikizler.jpeg",
    "assets/images/koc.jpeg",
    "assets/images/kova.jpeg",
    "assets/images/oglak.jpeg",
    "assets/images/terazi.jpeg",
    "assets/images/yay.jpeg",
    "assets/images/yengec.jpeg",
  ];


  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width * 0.6;
    return Scaffold(
      appBar: AppBar(
        title: Text('Burçlar Ve Özellikleri'),
        centerTitle: true,
        backgroundColor: Colors.teal[300],
      ),
      body: _buildListView(context),
    );
  }

  ListView _buildListView(BuildContext context) {
    return ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          final item = items[index];
          final tarih = tarihler[index];

          return ListTile(
            title: Text(item),
            subtitle: Text(tarih),
            leading: CircleAvatar(
              backgroundImage: AssetImage('assets/${resim[index]}'),
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => DetaySayfasi(index)),
              );
            },
          );
        });
  }

}
