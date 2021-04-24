import 'package:flutter/material.dart';

class Bitir extends StatefulWidget {
  @override
  _BitirState createState() => _BitirState();
}

class _BitirState extends State<Bitir> {
  @override
  Widget build(BuildContext context) {
    var data = [];
    data = ModalRoute.of(context).settings.arguments;

    String deneme = '';

    if (int.parse(data[1]) >= 70) {
      deneme = "Tebrikler Ördeksiniz";
    } else {
      deneme = "Ördek Değilsiniz";
    }

    return Scaffold(
      backgroundColor: Color.fromARGB(255, 56, 92, 89),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset(
              'assets/images/ordek.jpg',
              width: 400,
              height: 300,
            ),
            Padding(padding: const EdgeInsets.all(8.0)),
            Text(data[0].toString(),
                style: TextStyle(fontSize: 60.0, fontWeight: FontWeight.bold)),
            Padding(padding: const EdgeInsets.all(8.0)),
            Stack(children: <Widget>[
              Text(
                deneme,
                style: TextStyle(
                  fontSize: 30,
                  foreground: Paint()
                    ..style = PaintingStyle.stroke
                    ..strokeWidth = 3
                    ..color = Colors.white,
                ),
              ),
              Padding(padding: const EdgeInsets.all(8.0)),
            ]
            ),
            Padding(padding: const EdgeInsets.all(16.0)),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/');
              },
              child: Text('Ana sayfaya Dön'),
            ),
          ],
        ),
      ),
    );
  }
}
