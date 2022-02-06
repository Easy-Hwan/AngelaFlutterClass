import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(bottom: 100.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 50.0,
                  backgroundColor: Colors.white,
                  backgroundImage: AssetImage('images/myImage.png'),
                ),
                Text(
                  'EasyHwan',
                  style: TextStyle(
                    fontSize: 40.0,
                    fontFamily: 'Pacifico',
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    letterSpacing: 4.0,
                  ),
                ),
                Text(
                  'Flutter Developer'.toUpperCase(),
                  style: TextStyle(
                    fontSize: 15.0,
                    fontFamily: 'SourceSansPro',
                    color: Colors.white,
                    letterSpacing: 4.0,
                  ),
                ),
                SizedBox(
                  width: 150.0,
                  height: 30.0,
                  child: Divider(
                    color: Colors.teal.shade100,
                  ),
                ),
                Card(
                  margin:
                      EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                  color: Colors.white,
                  child: ListTile(
                    leading: Icon(
                      Icons.phone,
                      size: 20.0,
                      color: Colors.teal,
                    ),
                    title: Text(
                      '+82 10-7745-4513',
                      style: TextStyle(
                          fontFamily: 'sourceSansPro',
                          fontSize: 20.0,
                          color: Colors.teal),
                    ),
                  ),
                ),
                Card(
                  margin:
                      EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                  color: Colors.white,
                  child: ListTile(
                    leading: Icon(
                      Icons.email,
                      size: 20.0,
                      color: Colors.teal,
                    ),
                    title: Text(
                      'hwanEasy@gmail.com',
                      style: TextStyle(
                          fontFamily: 'sourceSansPro',
                          fontSize: 18.0,
                          color: Colors.teal),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
