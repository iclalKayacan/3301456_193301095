import 'package:flutter/material.dart';
import 'package:burc_dunyasi/home/anasayfa.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.pink,
        accentColor: Colors.pinkAccent,
      ),
      home:  anasayfa(),

    );
  }
}