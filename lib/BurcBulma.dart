import 'package:flutter/material.dart';

class BurcBulma extends StatelessWidget {
  const BurcBulma({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Yükselen Burç'),
        centerTitle: true,
        backgroundColor: Colors.deepPurple,
      ),
    );
  }
}