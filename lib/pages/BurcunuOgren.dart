import 'package:flutter/material.dart';

class BurcunuOgren extends StatefulWidget {

  @override
  State<BurcunuOgren> createState() => _BurcunuOgrenState();
}

class _BurcunuOgrenState extends State<BurcunuOgren> {
  final _formKey = GlobalKey<FormState>();
  late DateTime _selectedDate;
  late String _burc;

  void _calculateBurc() {
    if ((_selectedDate.month == 3 && _selectedDate.day >= 21) ||
        (_selectedDate.month == 4 && _selectedDate.day <= 19)) {
      _burc = "Koç";
    } else if ((_selectedDate.month == 4 && _selectedDate.day >= 20) ||
        (_selectedDate.month == 5 && _selectedDate.day <= 20)) {
      _burc = "Boğa";
    } else if ((_selectedDate.month == 5 && _selectedDate.day >= 21) ||
        (_selectedDate.month == 6 && _selectedDate.day <= 21)) {
      _burc = "İkizler";
    } else if ((_selectedDate.month == 6 && _selectedDate.day >= 22) ||
        (_selectedDate.month == 7 && _selectedDate.day <= 22)) {
      _burc = "Yengeç";
    } else if ((_selectedDate.month == 7 && _selectedDate.day >= 23) ||
        (_selectedDate.month == 8 && _selectedDate.day <= 22)) {
      _burc = "Aslan";
    } else if ((_selectedDate.month == 8 && _selectedDate.day >= 23) ||
        (_selectedDate.month == 9 && _selectedDate.day <= 22)) {
      _burc = "Başak";
    } else if ((_selectedDate.month == 9 && _selectedDate.day >= 23) ||
        (_selectedDate.month == 10 && _selectedDate.day <= 22)) {
      _burc = "Terazi";
    } else if ((_selectedDate.month == 10 && _selectedDate.day >= 23) ||
        (_selectedDate.month == 11 && _selectedDate.day <= 21)) {
      _burc = "Akrep";
    } else if ((_selectedDate.month == 11 && _selectedDate.day >= 22) ||
        (_selectedDate.month == 12 && _selectedDate.day <= 21)) {
      _burc = "Yay";
    } else if ((_selectedDate.month == 12 && _selectedDate.day >= 22) ||
        (_selectedDate.month == 1 && _selectedDate.day <= 19)) {
      _burc = "Oğlak";
    } else if ((_selectedDate.month == 1 && _selectedDate.day >= 20) ||
        (_selectedDate.month == 2 && _selectedDate.day <= 18)) {
      _burc = "Kova";
    } else if ((_selectedDate.month == 2 && _selectedDate.day >= 19) ||
        (_selectedDate.month == 3 && _selectedDate.day <= 20)) {
      _burc = "Balık";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Burç Bulucu"),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Doğum Tarihinizi Girin:"),
              SizedBox(height: 8.0),
              TextFormField(
                decoration: InputDecoration(
                  hintText: "GG/AA/YYYY",
                ),
                onTap: () async {
// Tarih seçim arayüzünü göstermek için datepicker çağırılıyor.
                  final selectedDate = await showDatePicker(
                    context: context,
                    initialDate: DateTime.now(),
                    firstDate: DateTime(1900),
                    lastDate: DateTime.now(),
                  );
                  if (selectedDate != null) {
                    setState(() {
                      _selectedDate = selectedDate;
                    });
                  }
                },
              ),
              SizedBox(height: 16.0),
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    _calculateBurc();

                    showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          title: Text("Burcunuz:"),
                          content: Text(_burc),
                          actions: [
                            TextButton(
                              onPressed: () => Navigator.of(context).pop(),
                              child: Text("Tamam"),
                            ),
                          ],
                        );
                      },
                    );
                  }
                },
                child: Text("Burcunu Bul"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
