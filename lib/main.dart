import 'package:deneme2/ordekbilgi.dart';
import 'package:deneme2/sorular.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:deneme2/bitir.dart';
import 'package:deneme2/hakkinda.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Ördeks ',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => MyHomePage(),
        '/sorular': (context) => Sorular(),
        '/bitir': (context) => Bitir(),
        '/hakkinda': (context) => Hakkinda(),
        '/ordekbilgi': (context) => Ordekbilgi(),
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String adSoyad = '';

  void kontrol() {
    if (adSoyad.length >= 5) {
      var data = [];
      data.add(adSoyad);

      Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => Sorular(),
            settings: RouteSettings(
              arguments: data,
            ),
          ));
    }
  }

  void _adSoyadKaydet(String text) {
    setState(() {
      adSoyad = text;
    });
  }

  @override
  Widget build(BuildContext context) {
    bool butonpasif = true;
    if (adSoyad.length >= 5) {
      butonpasif = false;
    } else {
      butonpasif = true;
    }

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Ördek Misiniz ?', style: TextStyle(fontSize: 60.0)),
            Text(
              'Ad - Soyad giriniz:',
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: 300,
                child: TextFormField(
                  decoration: const InputDecoration(
                    hintText: 'Adinizi ve Soyadinizi giriniz',
                  ),
                  keyboardType: TextInputType.text,
                  inputFormatters: [
                    FilteringTextInputFormatter.singleLineFormatter
                  ],
                  onChanged: (text) {
                    _adSoyadKaydet(text);
                  },
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16.0),
              child: ElevatedButton(
                onPressed: butonpasif ? null : kontrol,
                child: Text('Başla'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16.0),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Ordekbilgi()),
                  );
                },
                child: Text('Ördek Bilgi'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16.0),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Hakkinda()),
                  );
                },
                child: Text('Hakkında'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
