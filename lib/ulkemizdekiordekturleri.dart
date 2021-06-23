import 'package:flutter/material.dart';
import 'package:deneme2/file_op/file_operations.dart';
import 'package:deneme2/file_op//file_download_view.dart';

class Trordekleri extends StatefulWidget {
  @override
  _TrordekleriState createState() => _TrordekleriState();
}

class _TrordekleriState extends State<Trordekleri> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 56, 92, 89),
      appBar: AppBar(
        title: Text('Ülkemizdeki Ördek Türleri'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text('Ülkemizdeki Ördek Türleri',
                  style: TextStyle(fontSize: 40.0)),
              Padding(padding: const EdgeInsets.symmetric(vertical: 8.0)),
              Text(
                  'Ülkemizde ördekler, birçok ırkın karışmasından elde edilen melez karışımıdır.'),
              Padding(padding: const EdgeInsets.symmetric(vertical: 8.0)),
              Text('Evcil ördekler, yabani olan yeşilbaştan türemiştir.'),
              Padding(padding: const EdgeInsets.symmetric(vertical: 8.0)),
              Text(
                  'YEŞİLBAŞ Anas platyrhynchos, KILKUYRUK Anas acuta, ÇAMURCUN Anas crecca, SUNA (HANIM ÖRDEĞİ) Tadorna tadorna,'
                  ' ÇIKRIKÇIN Anas querquedula, ANGUT Tadorna ferruginea, Ülkemizdeki bazı ördek türlerindendir.'),
              Padding(padding: const EdgeInsets.symmetric(vertical: 8.0)),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image.asset(
                    'assets/images/yesilbas.jpg',
                    width: 75,
                    height: 150,
                  ),
                  Image.asset(
                    'assets/images/kilkuyruk.jpg',
                    width: 75,
                    height: 150,
                  ),
                  Image.asset(
                    'assets/images/camurcunordegi.jpg',
                    width: 75,
                    height: 150,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text('YEŞİLBAŞ'),
                  Text('KILKUYRUK'),
                  Text('ÇAMURCUN'),
                ],
              ),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => FileOperationsScreen()));
                  },
                  child: Text("Ördek İsimlendirme")),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => FileDownloadView()));
                  },
                  child: Text("Rastgele Bilgi ve Video")),
            ],
          ),
        ),
      ),
    );
  }
}
