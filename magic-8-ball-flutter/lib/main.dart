import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        debugShowCheckedModeBanner: false,
        home: BallPage(),
      ),
    );

class BallPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ask Me Anything'),
        centerTitle: false,
        backgroundColor: Colors.blue[900],
      ),
      body: Container(
        color: Colors.blue,
        child: Center(child: Ball()),
      ),
    );
  }
}

class Ball extends StatefulWidget {
  @override
  _BallState createState() => _BallState();
}

List<String> ballPathArr = [
  'images/ball1.png',
  'images/ball2.png',
  'images/ball3.png',
  'images/ball4.png',
  'images/ball5.png'
];
String ballPath = 'images/ball1.png';

class _BallState extends State<Ball> {
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        setState(() {
          ballPath = ballPathArr[Random().nextInt(4) + 1];
        });
      },
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            ballPath,
            style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          Image.asset(ballPath),
        ],
      ),
    );
  }
}
