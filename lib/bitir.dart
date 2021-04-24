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
            Text('Ördek Misiniz ?', style: TextStyle(fontSize: 60.0)),
            Text(data[0].toString()),
            Text(data[1].toString()),
            Text('Puanınız 70 ve üzeri ise kendinize Ördek diyebilirsiniz',
                style: TextStyle(fontSize: 30.0)),
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
