import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'price_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        primaryColor: Colors.lightBlue,
        scaffoldBackgroundColor: Colors.white,
        cupertinoOverrideTheme: CupertinoThemeData(
            textTheme: CupertinoTextThemeData(
          pickerTextStyle: TextStyle(color: Colors.white, fontSize: 20),
        )),
      ),
      home: PriceScreen(),
    );
  }
}
