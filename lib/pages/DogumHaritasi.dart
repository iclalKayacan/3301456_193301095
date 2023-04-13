import 'package:flutter/material.dart';
import '../models/burc_data.dart';
import '../models/MyAppBar.dart';
import 'gezegenler.dart';

class DogumHaritasi extends StatefulWidget {
  @override
  State<DogumHaritasi> createState() => _DogumHaritasiState();
}

class _DogumHaritasiState extends State<DogumHaritasi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(),
      body: ListView.builder(
        itemCount: 7,
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => gezegenler(index),
                ),
              );
            },
            child: Container(
              width: MediaQuery.of(context).size.width / 2.2,
              height: MediaQuery.of(context).size.width / 2.1,
              margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              decoration: BoxDecoration(
                color: Colors.grey[300],
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Image.asset(
                    gezegenResim[index],
                    width: 75.0,
                    height: 100.0,
                  ),
                  SizedBox(height: 8.0),
                  Text(
                    gezegenIsimleri[index],
                    style: TextStyle(
                      fontSize: 22.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    gezegenBurclari[index],
                    style: TextStyle(
                      fontSize: 15.0,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
