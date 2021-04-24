import 'package:deneme2/bitir.dart';
import 'package:flutter/material.dart';

class Sorular extends StatefulWidget {
  @override
  _SorularState createState() => _SorularState();
}

class _SorularState extends State<Sorular> {
  String adSoyad = '';

  int mevcutsoru = 0;
  String mevcutcevap = '';
  int puan = 0;

  void BitireYolla() {
    var data = [];
    data.add(adSoyad);

    data.add(puan.toString());

    Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => Bitir(),
          settings: RouteSettings(
            arguments: data,
          ),
        ));
  }

  var sorular = [
    {
      'soru': 'Gaganız var mı',
      'cevaplar': ['Var', 'Yok', 'Nasıl ya'],
      'dogrucevap': 'Var'
    },
    {
      'soru': 'Ayaklarınız perdeli mi',
      'cevaplar': ['Evet', 'Hayır', 'Pati pati'],
      'dogrucevap': 'Evet'
    },
    {
      'soru': 'Vaklar mısınız',
      'cevaplar': ['Evet', 'Hayır', 'Vak'],
      'dogrucevap': 'Vak'
    },
    {
      'soru': 'Kaç ayağınız var',
      'cevaplar': ['İki', 'Dört', 'Beş'],
      'dogrucevap': 'İki'
    },
    {
      'soru': 'Uçabilir misiniz',
      'cevaplar': ['Evet', 'Hayır', 'I believe i can fly'],
      'dogrucevap': 'Evet'
    },
    {
      'soru': 'Yüzebilir misiniz',
      'cevaplar': ['Yüzmek için yaratıldım', 'Hayır', 'Evet'],
      'dogrucevap': 'Evet'
    },
    {
      'soru': 'Ağzınızla balık tutabilir misiniz',
      'cevaplar': ['Evet', 'Kolay iş', 'Hayır'],
      'dogrucevap': 'Kolay iş'
    },
    {
      'soru': 'İnsanlara saldırır mısınız',
      'cevaplar': ['Evet', 'Hayır', 'Sinirlendirirlerse'],
      'dogrucevap': 'Sinirlendirirlerse'
    },
    {
      'soru': 'Kendinizi sevdirir misiniz',
      'cevaplar': ['İki yem yeterli', 'Hayır', 'Evet'],
      'dogrucevap': 'iki yem yeterli'
    },
    {
      'soru': 'Ördek Misiniz',
      'cevaplar': ['Evet', 'Hayır', 'Vak'],
      'dogrucevap': 'Vak'
    },
    {
      'soru': 'Sinavi bitirelim mi',
      'cevaplar': ['Evet', 'Hayır', 'Vak'],
      'dogrucevap': 'Vak'
    },
  ];

  void kontrolEt() {
    if (mevcutsoru >= 10) {
      mevcutsoru = 0;

      BitireYolla();
    } else {
      if (mevcutcevap == sorular[mevcutsoru]['dogrucevap']) {
        puan = puan + 10;

        mevcutsoru++;
      } else {
        mevcutsoru++;
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    var data = [];
    data = ModalRoute.of(context).settings.arguments;
    adSoyad = data[0];

    List cevaplistesi = [];
    for (var u in sorular[mevcutsoru]['cevaplar']) {
      cevaplistesi.add(u);
    }

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Ördek Misiniz ?', style: TextStyle(fontSize: 40.0)),
            Text('Ad - Soyad: ' + adSoyad, style: TextStyle(fontSize: 16.0)),
            Text(
              'Mevcut Soru /Toplam Soru: ' +
                  mevcutsoru.toString() +
                  ' / ' +
                  sorular.length.toString(),
              style: TextStyle(fontSize: 12),
            ),
            Text(
              'Puanınız: ' + puan.toString(),
              style: TextStyle(fontSize: 12),
            ),
            Text(
              sorular[mevcutsoru]['soru'].toString(),
              style: TextStyle(fontSize: 32),
              textAlign: TextAlign.center,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: ElevatedButton(
                onPressed: () {
                  setState(() {
                    mevcutcevap = cevaplistesi[0].toString();
                  });
                  kontrolEt();
                },
                child: Text(
                  cevaplistesi[0],
                  style: TextStyle(fontSize: 12),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: ElevatedButton(
                onPressed: () {
                  setState(() {
                    mevcutcevap = cevaplistesi[1].toString();
                  });
                  kontrolEt();
                },
                child: Text(
                  cevaplistesi[1],
                  style: TextStyle(fontSize: 12),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: ElevatedButton(
                onPressed: () {
                  setState(() {
                    mevcutcevap = cevaplistesi[2].toString();
                  });
                  kontrolEt();
                },
                child: Text(
                  cevaplistesi[2],
                  style: TextStyle(fontSize: 12),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/');
                },
                child: Text('Ana sayfaya Dön'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
