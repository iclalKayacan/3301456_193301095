import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../pages/detay.dart';
import 'NavBar.dart';
import 'package:burc_dunyasi/models/burc_data.dart';

class anasayfa extends StatefulWidget {

  @override
  State<anasayfa> createState() => _anasayfaState();
}

class _anasayfaState extends State<anasayfa> {
  final List<String> items = List.generate(13, (index) => "Item $index");

  late final int index;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer:  NavBar(),
      appBar: AppBar(
        backgroundColor: Colors.pinkAccent,
        title: Text(
          'BURÇLAR',
            style:  GoogleFonts.martel(
            textStyle: TextStyle(
            color: Colors.white,
            fontSize: 33,
          ),
        ),
        ),
      ),
      body: GridView.builder(
        padding: EdgeInsets.all(16.0),
        itemCount: burclar.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 16.0,
          crossAxisSpacing: 12.0,
        ),
        itemBuilder: (BuildContext context, int index) {
          return GridTile(
            child: GestureDetector(
              child: CircleAvatar(
                backgroundImage: AssetImage(burcResimleri[index]),
                radius: 50.0,
                backgroundColor: Colors.transparent,
                child: Text(
                  burclar[index],
                  style:  GoogleFonts.courgette(
                    color: Colors.purple,
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                    height: 10.5,
                  ),
                ),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => detay(index)),
                );
              },
            ),
          );
        },
      ),
    );
  }
}
