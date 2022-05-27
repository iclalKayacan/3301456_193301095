import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Haberler extends StatelessWidget {
  const Haberler({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Astroloji Haberleri'),
        centerTitle: true,
        backgroundColor: Colors.teal[300],
      ),
    );
  }
}
