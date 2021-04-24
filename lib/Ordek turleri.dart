import 'package:deneme2/ulkemizdekiordekturleri.dart';
import 'package:flutter/material.dart';

class Ordekturleri extends StatefulWidget {
  @override
  _OrdekturleriState createState() => _OrdekturleriState();
}

class _OrdekturleriState extends State<Ordekturleri> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 56, 92, 89),
      appBar: AppBar(
        title: Text('Ördek Türleri'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text('Türler Hakkında', style: TextStyle(fontSize: 40.0)),
              Padding(padding: const EdgeInsets.symmetric(vertical: 8.0)),
              Text(
                  'Çin Ördeği (Aix galericulata) Bu ördek türü dünyadaki en parlak renkli ve güzel kuşlardan biridir.'),
              Padding(padding: const EdgeInsets.symmetric(vertical: 8.0)),
              Text(
                  'Macar Ördeği (Netta rufina) Muhteşem bir dalıcı olan bu büyük, güzel ördek Macar ördeğidir. Üreme alanları Avrupa ve Asyanın alçak bölgelerindeki bataklıklar ve göllerdir.'),
              Padding(padding: const EdgeInsets.symmetric(vertical: 8.0)),
              Text(
                  'Orman Ördeği Güzel görünümlü, orta büyüklükteki bu tüneyici kuş orman ördeği, yahur Carolina ördeği olarak bilinmektedir.'),
              Padding(padding: const EdgeInsets.symmetric(vertical: 8.0)),
              Text(
                  'Yaban Ördeği Bu su kuşu, ördekler arasında en çok bilinenlerden ve tanınanlardan biridir. Yaban ördeği Kuzey Amerikanın alttropikal kuşağa gelen bölgesinde, Avrupa, Asya ve Avustralyada yaşamaktadır.'),
              Padding(padding: const EdgeInsets.symmetric(vertical: 8.0)),
              Text(
                  'Beyaz Pekin veya Çinli ördek güçlü bir vücuda sahip oldukça büyük bir kuştur. Avrupa’da ve Rusya’da geleneksel olarak yetiştirilen çeşitlerden biraz farklıdır.'),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 16.0),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Trordekleri()),
                    );
                  },
                  child: Text('Ülkemizdeki Ördek Türleri'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
