import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      backgroundColor: const Color.fromARGB(255, 189, 243, 190),
      appBar: AppBar(
        title: const Text('Food for Good'),
        backgroundColor: Colors.green,
      ),
      body: MyApp(),
    ),
  ));
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var leftImgNo = 1;
  var rightImgNo = 2;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        const Text(
          'Let\'s recycle it!!',
          style: TextStyle(
            fontSize: 40.0,
          ),
        ),
        const Text(
          'Press until you match',
          style: TextStyle(
            fontSize: 40.0,
          ),
        ),
        Text(
          rightImgNo == leftImgNo ? 'You win!' : 'Try',
          style: const TextStyle(
            fontSize: 40.0,
          ),
        ),
        Row(
          children: [
            Expanded(
              child: TextButton(
                onPressed: () {
                  setState(() {
                    leftImgNo = Random().nextInt(6) + 1;
                  });
                },
                child: Image.asset('images/pic$leftImgNo.png'),
              ),
            ),
            Expanded(
              child: TextButton(
                onPressed: () {
                  setState(() {
                    rightImgNo = Random().nextInt(6) + 1;
                  });
                },
                child: Image.asset('images/pic$rightImgNo.png'),
              ),
            )
          ],
        ),
      ],
    );
  }
}
