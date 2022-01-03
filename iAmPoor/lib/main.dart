import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyHome(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHome extends StatelessWidget {
  const MyHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('I am poor'),
        backgroundColor: Colors.blueGrey[900],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Text(
              'I am poor so saving money.',
              style: TextStyle(
                fontSize: 20.0,
                color: Colors.blueGrey,
                fontWeight: FontWeight.bold,
              ),
            ),
            Image(
              image: AssetImage('images/woolly-cash-savings-1.png'),
              width: 300.0,
            ),
          ],
        ),
      ),
    );
  }
}
