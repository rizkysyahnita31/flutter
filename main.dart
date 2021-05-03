import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Syahnita Rizky Utami  (6SIA4)'),
        ),
        body: SyahnitaApp(),
      ),
    );
  }
}

class SyahnitaApp extends StatefulWidget {
  _SyahnitaAppState createState() => _SyahnitaAppState();
}

class _SyahnitaAppState extends State<SyahnitaApp> {
  final txtnama = TextEditingController();
  String _selected;
  String hasil;
  onProses() {
    setState(() {
      hasil = "${txtnama.text} jurusan $_selected";
    });
  }

  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(20.0),
        child: Column(children: <Widget>[
          TextField(
            controller: txtnama,
            decoration: new InputDecoration(
              labelText: "Jurusan",
            ),
          ),
          DropdownButton(
              hint: Text("Pilih Menu"),
              value: _selected,
              items: ['Sistem Informasi', 'Manajemen', 'Sistem Komputer']
                  .map((choice) {
                return DropdownMenuItem(
                  child: Text(choice),
                  value: choice,
                );
              }).toList(),
              onChanged: (value) {
                setState(() {
                  _selected = value;
                });
              }),
          RaisedButton(
            child: Text('Proses'),
            onPressed: onProses,
          ),
          Text('$hasil')
        ]));
  }
}
