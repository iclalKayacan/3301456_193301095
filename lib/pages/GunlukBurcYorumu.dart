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
  final TextEditingController _textEditingController = TextEditingController();
  String _horoscope = '';

  Future<void> _getHoroscope() async {
    final url = Uri.parse(
        'https://astrologyapi-com.p.rapidapi.com/api/horoscope/${_textEditingController.text}/today');
    final response = await http.get(
      url,
      headers: {
        'x-rapidapi-key': '<API_KEY>',
        'x-rapidapi-host': 'astrologyapi-com.p.rapidapi.com',
      },
    );

    if (response.statusCode == 200) {
      final responseData = jsonDecode(response.body);
      setState(() {
        _horoscope = responseData['horoscope'];
      });
    } else {
      setState(() {
        _horoscope = 'An error occurred while fetching horoscope.';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: MyAppBar(),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: TextField(
                  controller: _textEditingController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Enter your zodiac sign...',
                  ),
                ),
              ),
              const SizedBox(height: 16),
              ElevatedButton(
                onPressed: () => _getHoroscope(),
                child: const Text('Get Horoscope'),
              ),
              const SizedBox(height: 16),
              Text(
                _horoscope,
                style: const TextStyle(fontSize: 18),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
