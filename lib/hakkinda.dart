import 'package:flutter/material.dart';

class Hakkinda extends StatefulWidget {
  @override
  _HakkindaState createState() => _HakkindaState();
}

class _HakkindaState extends State<Hakkinda> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 56, 92, 89),
      appBar: AppBar(
        title: Text('Hakkında'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text('Ördek Misiniz uygulaması',
                  style: TextStyle(fontSize: 60.0, color: Colors.white)),
              Text(
                  'Bu uygulama Dr. Öğretim Üyesi Ahmet Cevahir ÇINAR tarafından yürütülen 3301456 kodlu MOBİL PROGRAMLAMA dersi kapsamında 183301032 numaralı Abdullah Harun Taşdelen tarafından 30 Nisan 2021 günü yapılmıştır.',
                  style: TextStyle(color: Colors.white)),

              ButtonTheme(
                minWidth: 200.0,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18.0),
                    side: BorderSide(color: Colors.green)),
                child: RaisedButton(
                  elevation: 5.0,
                  hoverColor: Colors.green,
                  color: Colors.amber,
                  child: Text(
                    "Ana Sayfaya Dön",
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.bold),
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, '/');
                  },
                ),
              ),


            ],
          ),
        ),
      ),
    );
  }
}
