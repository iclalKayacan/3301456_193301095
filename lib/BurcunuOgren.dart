import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BurcunuOgren extends StatefulWidget {
  // This widget is the root of your application.
  @override
  _BurcunuOgrenState createState() => _BurcunuOgrenState();

}

class _BurcunuOgrenState extends State<BurcunuOgren> {

  List<String> aylar =['Ocak','Şubat','Mart'];
  List<String> gunler =['1','2','3'];
  List<String> burclar =['oğlak','başak','yay'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Burcunu Öğren'),
      ),
      body: Center(
        child: DropdownButton<String>(
          hint: Text('Country'),
          value: selectedAy,
          items: aylar.map((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(value),
            );
          }).toList(),
          onChanged: onChangedCallback,
        ),
      ),
    );
  }

  void onChangedCallback(country) {
    if (country == 'USA') {
      provinces = usaProvince;
    } else if (country == 'India') {
      provinces = indiaProvince;
    } else {
      provinces = [];
    }
    setState(() {
      selectedProvince = null;
      selectedAy = country;
    });
  }
}



}


