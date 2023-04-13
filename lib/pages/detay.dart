import 'package:flutter/material.dart';
import '../models/burc_data.dart';
import 'package:google_fonts/google_fonts.dart';

class detay extends StatelessWidget {
  late final int index;

  detay(this.index);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(burclar[index]),
        backgroundColor: Colors.purple[700],
      ),
      backgroundColor: Colors.blue[10],
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Container(
            height: 250,
            width: 500,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(resim[index]), fit: BoxFit.fill)),
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      ozellikler[index],
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.black,
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
