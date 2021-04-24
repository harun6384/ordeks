import 'package:flutter/material.dart';

class Saka extends StatefulWidget {
  @override
  _SakaState createState() => _SakaState();
}

class _SakaState extends State<Saka> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 56, 92, 89),
      appBar: AppBar(
        title: Text('Öcü'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.asset(
                'assets/images/ordeksaka.jpg',
                width: 300,
                height: 300,
              ),
              Text('Vampir Ördek gerçek değil sana zarar veremez',
                  style: TextStyle(fontSize: 40.0)),
            ],
          ),
        ),
      ),
    );
  }
}
