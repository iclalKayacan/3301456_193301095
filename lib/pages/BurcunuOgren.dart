import 'package:flutter/material.dart';

import '../models/MyAppBar.dart';

class BurcunuOgren extends StatefulWidget {

  @override
  State<BurcunuOgren> createState() => _BurcunuOgrenState();
}

class _BurcunuOgrenState extends State<BurcunuOgren> {
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
