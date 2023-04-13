import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import '../models/MyAppBar.dart';

class GunlukBurcYorumu extends StatefulWidget {
  const GunlukBurcYorumu({Key? key}) : super(key: key);

  @override
  _GunlukBurcYorumuState createState() => _GunlukBurcYorumuState();
}

class _GunlukBurcYorumuState extends State<GunlukBurcYorumu> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: MyAppBar(),

      ),
    );
  }
}
