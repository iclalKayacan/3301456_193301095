import 'package:flutter/material.dart';

class GunlukBurcYorumu extends StatelessWidget {
  const GunlukBurcYorumu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Günlük Burç Yorumu'),
        centerTitle: true,
        backgroundColor: Colors.deepOrange,
      ),
    );
  }
}