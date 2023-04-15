import 'dart:math';

import 'package:flutter/material.dart';

import '../models/MyAppBar.dart';

class BurcUyumu extends StatefulWidget {
  @override
  State<BurcUyumu> createState() => _BurcUyumuState();
}

class _BurcUyumuState extends State<BurcUyumu> {
  TextEditingController _kendiBurcun = new TextEditingController();
  TextEditingController _partnerBurcu = new TextEditingController();
  late String ilkIsim, ikinciIsim;
  String yuzde = '';

  void _sil() {
    setState(() {
      yuzde = '';
      _kendiBurcun.clear();
      _partnerBurcu.clear();
    });
  }

  void _hesapla() {
    String ilkIsim = _kendiBurcun.text;
    String ikinciIsim = _partnerBurcu.text;

    if (ilkIsim.isEmpty || ikinciIsim.isEmpty) {
      return;
    }
    int toplam = Random().nextInt(10) * 10;
    yuzde = "%$toplam";
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(),
      body: Padding(
          padding: EdgeInsets.fromLTRB(20, 50, 20, 0),
           child: SingleChildScrollView(
            child: Column(mainAxisSize: MainAxisSize.min, children: [
              Image.asset('assets/images/logo.png'),
              TextField(
                controller: _kendiBurcun,
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                    filled: true,
                    hintText: 'Kendi burcun',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20))),
              ),
              SizedBox(height: 20.0),
              TextField(
                controller: _partnerBurcu,
                decoration: InputDecoration(
                    // fillColor: Colors.white,
                    filled: true,
                    hintText: 'Onun Burcu',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20))),
              ),
              SizedBox(
                height: 20.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  MaterialButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0)),
                    color: Colors.red,
                    child: Text("Hesapla"),
                    textColor: Theme.of(context).cardColor,
                    onPressed: () {
                      FocusScope.of(context).unfocus();
                      _hesapla();
                    },
                  ),
                  MaterialButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0)),
                    color: Colors.red,
                    child: Text("Temizle"),
                    textColor: Theme.of(context).cardColor,
                    onPressed: () {
                      _sil();
                    },
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 30),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          yuzde,
                          style: TextStyle(
                              fontSize: 50.0,
                              color: Colors.red,
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ]),
          ),
        ),
      );
  }
}
