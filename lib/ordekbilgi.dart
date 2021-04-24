import 'package:deneme2/Ordek%20turleri.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:deneme2/besleme.dart';

class Ordekbilgi extends StatefulWidget {
  @override
  _OrdekbilgiState createState() => _OrdekbilgiState();
}

class _OrdekbilgiState extends State<Ordekbilgi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 56, 92, 89),
      appBar: AppBar(
        title: Text('Ördek Bilgi Sayfası'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text('Ordekler hakkinda bilgi', style: TextStyle(fontSize: 40.0)),
              Padding(padding: const EdgeInsets.symmetric(vertical: 16.0)),
              Text(
                  'Ördek, (Anatinae) alt familyasından hemen hemen bütün dünyanın sulak bölgelerinde yaşayan, perde ayaklı su kuşlarına verilen ad. Göl ve bataklık kenarlarını pek severler. Hızlı akan nehir ve denizlerde yaşayanlar da vardır. Beslenmesi kolay olduğundan, evcil birçok soyları üretilmiştir.'),
              Padding(padding: const EdgeInsets.symmetric(vertical: 8.0)),
              Text(
                  'Yassı gaga, perdeli ayaklar, badi badi bir yürüyüş ve vak vak gibilerden bir ses, ördeklerin belli başlı özellikleridir.'),
              Padding(padding: const EdgeInsets.symmetric(vertical: 8.0)),
              Text(
                  'Kısa ayakları vücudunun arka kısmında oduğundan, yürürken zorluk çekerler. Erkekler dişilerden daha büyük ve gösterişlidir. Kışın ve ilkbaharda semirdiklerinden etleri lezzetli olur.'),
              Padding(padding: const EdgeInsets.symmetric(vertical: 8.0)),
              Text('5-10 yıl ömürleri vardır.'),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 16.0),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Ordekturleri()),
                    );
                  },
                  child: Text('Ördek Türleri'),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 16.0),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Besleme()),
                    );
                  },
                  child: Text('Nasil beslenir'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
