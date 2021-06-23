import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'package:vector_math/vector_math_64.dart' show Vector3;


class Saka extends StatefulWidget {
  @override
  _SakaState createState() => _SakaState();
}

class _SakaState extends State<Saka> {
  double _scale = 1.0;
  double _previousScale = 1.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 56, 92, 89),
      appBar: AppBar(
        title: Text('Öcü'),
      ),
      body: Center(
        child: GestureDetector(
          onScaleStart: (ScaleStartDetails details) {


            _previousScale = _scale;
            setState(() {});
          },
          onScaleUpdate: (ScaleUpdateDetails details) {


            _scale = _previousScale * details.scale;
            setState(() {});
          },
          onScaleEnd: (ScaleEndDetails details) {


            _previousScale = 1.0;
            setState(() {});
          },
          onTap: () async {
            ScaffoldMessenger.of(context)
                .showSnackBar(new SnackBar(content: new Text('VAK ')));
          },
          onDoubleTap: () {
            ScaffoldMessenger.of(context)
                .showSnackBar(new SnackBar(content: new Text('VAK VAK')));
          },
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Transform(
              transform: Matrix4.diagonal3(Vector3(_scale, _scale, _scale)),
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
        ),
      ),
    );
  }
}
