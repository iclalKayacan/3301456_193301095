
import 'package:burc_dunyasi/models/MyAppBar.dart';
import 'package:flutter/material.dart';
import '../models/burc_data.dart';

class gezegenler extends StatelessWidget {
  late final int index;
  var key;

  gezegenler(this.index, {this.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(),
      body: Column(
        children: [
          Container(
            height: 200,
            width: 100,
            padding: EdgeInsets.only(bottom: 40),
            child: Image.asset(gezegenResim[index]),
          ),
          Padding(
            padding: EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.only(bottom: 15),
                  child: Text(
                    gezegenAciklama[index],
                    style: TextStyle(
                        fontSize: 18,
                        color: Colors.black,
                        fontWeight: FontWeight.normal,
                        fontStyle: FontStyle.italic),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
