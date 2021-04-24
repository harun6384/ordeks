import 'package:deneme2/ordekfotolari.dart';
import 'package:flutter/material.dart';

class Besleme extends StatefulWidget {
  @override
  _BeslemeState createState() => _BeslemeState();
}

class _BeslemeState extends State<Besleme> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Nasıl Beslenir'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text('Nasıl Beslenmeli', style: TextStyle(fontSize: 40.0)),
              Padding(padding: const EdgeInsets.symmetric(vertical: 8.0)),
              Text(
                  'Doğranmış lahana, pazı, marul gibi sebzeler bu sevimli arkadaşlarımızın en sevdiği alternatif yiyeceklerdendir.'),
              Padding(padding: const EdgeInsets.symmetric(vertical: 8.0)),
              Text(
                  'Sebzeleri biraz doğrayıp yemeleri için bir suya atabiliriz.'),
              Padding(padding: const EdgeInsets.symmetric(vertical: 8.0)),
              Text(
                  'Ara ara yemeklerine sebze alternatifleri eklemek ördeklerimizin beslenme çeşitliliğine kavuşması açısından faydalı olacaktır. İstediğiniz kadar yeşillik verebilirsiniz'),
              Padding(padding: const EdgeInsets.symmetric(vertical: 8.0)),
              Text(
                  'Ayrıca bahçemizde serbestçe gezdiklerinde en sevdikleri yemek olan solucanları bularak yiyeceklerdir.'),
              Padding(padding: const EdgeInsets.symmetric(vertical: 8.0)),
              Text(
                  'Taze karpuz, biraz pişmiş kabak, çırpılmış yumurta ve tavuklara verdiğiniz hemen hemen her yiyeceği, ördeklere de dengeli bir şekilde verebiliriz.'),
              Padding(padding: const EdgeInsets.symmetric(vertical: 8.0)),
              Text(
                  'Ördekler kesinlikle ekmek ve türevlerini yememelidirler çünkü ördeklerin sindirim sistemi ekmek benzeri yiyecekleri öğütemez.'),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 16.0),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Ordekfotolari()),
                    );
                  },
                  child: Text('Ördek Fotoğrafları'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
