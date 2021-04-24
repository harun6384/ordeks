import 'package:flutter/material.dart';
import 'package:deneme2/saka.dart';

class Ordekfotolari extends StatefulWidget {
  @override
  _OrdekfotolariState createState() => _OrdekfotolariState();
}

class _OrdekfotolariState extends State<Ordekfotolari> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Fotoğraflar'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image.asset(
                    'assets/images/cinordegi.jpg',
                    width: 75,
                    height: 150,
                  ),
                  Image.asset(
                    'assets/images/macarordegi.jpg',
                    width: 75,
                    height: 150,
                  ),
                  Image.asset(
                    'assets/images/ormanordegi.jpg',
                    width: 75,
                    height: 150,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text('Çin Ördeği'),
                  Text('Macar Ördeği'),
                  Text('Orman Ördeği'),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image.asset(
                    'assets/images/yabanordegi.jpg',
                    width: 75,
                    height: 150,
                  ),
                  Image.asset(
                    'assets/images/pekinordegi.jpg',
                    width: 75,
                    height: 150,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text('Yaban Ördeği'),
                  Text('Pekin Ördeği'),
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 16.0),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Saka()),
                    );
                  },
                  child: Text('Öcü var tıklama'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
