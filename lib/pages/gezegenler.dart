/*import 'package:burc_dunyasi/data/burc_data.dart';
import 'package:flutter/material.dart';

import '../models/MyAppBar.dart';


class gezegenler extends StatefulWidget {
  const gezegenler(int index, {Key? key}) : super(key: key);

  @override
  _gezegenlerState createState() => _gezegenlerState();
}

class _gezegenlerState extends State<gezegenler> {
  late int index;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(),
      body: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height * .35,
            padding: const EdgeInsets.only(bottom: 30),
            width: double.infinity,
            child: Image.asset(gezegenResim[index]),
          ),
          Container(
            height: MediaQuery.of(context).size.height * 0.5,
            padding: EdgeInsets.all(40.0),
            width: MediaQuery.of(context).size.width,
          ),
        ],
      ),
    );
  }
}*/

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
            height: MediaQuery
                .of(context)
                .size
                .height * .25,
            padding: const EdgeInsets.only(bottom: 40),
            width: double.infinity,
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
                        fontStyle: FontStyle.italic
                    ),
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
