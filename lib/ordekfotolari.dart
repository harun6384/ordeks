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
      backgroundColor: Color.fromARGB(255, 56, 92, 89),
      appBar: AppBar(
        title: Text('Fotoğraflar'),
      ),
      body: Center(
        child: Container(
          child: SingleChildScrollView(
            child: SafeArea(
              child: Column(
                children: <Widget>[
                  Image.asset(
                    'assets/images/cinordegi.jpg',
                    width: 300,
                    height: 300,
                  ),
                  Text('Çin Ördeği'),
                  Image.asset(
                    'assets/images/macarordegi.jpg',
                    width: 300,
                    height: 300,
                  ),
                  Text('Macar Ördeği'),
                  Image.asset(
                    'assets/images/ormanordegi.jpg',
                    width: 300,
                    height: 300,
                  ),
                  Text('Orman Ördeği'),
                  Image.asset(
                    'assets/images/yabanordegi.jpg',
                    width: 300,
                    height: 300,
                  ),
                  Text('Yaban Ördeği'),
                  Image.asset(
                    'assets/images/pekinordegi.jpg',
                    width: 300,
                    height: 300,
                  ),
                  Text('Pekin Ördeği'),
                  Padding(padding: EdgeInsets.all(10)),
                  ButtonTheme(
                    minWidth: 200.0,
                    height: 100.0,
                    child: RaisedButton(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(40)),
                      color: Colors.green,
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Saka()),
                        );
                      },
                      child: Text('Öcü var tıklama'),
                    ),
                  ),
                  Padding(padding: EdgeInsets.all(10)),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
