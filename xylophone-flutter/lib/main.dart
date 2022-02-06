import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  final AudioCache audioCache = AudioCache();
  List<Color> colorsArr = [
    Colors.redAccent,
    Colors.orangeAccent,
    Colors.yellowAccent,
    Colors.greenAccent,
    Colors.tealAccent,
    Colors.blueAccent,
    Colors.purpleAccent,
  ];

  void play(path) async {
    await audioCache.play(path);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          backgroundColor: Colors.black,
          body: SafeArea(
            child: ListView.builder(
              itemCount: colorsArr.length,
              itemBuilder: (context, index) {
                var pathIndex = index + 1;
                return TextButton(
                    style: TextButton.styleFrom(
                        padding: EdgeInsets.zero, alignment: Alignment.center),
                    onPressed: () {
                      play('note$pathIndex.wav');
                    },
                    child: Container(
                      height: MediaQuery.of(context).size.height / 8,
                      color: colorsArr[index],
                    ));
              },
            ),
          )),
    );
  }
}
