// ignore_for_file: prefer_const_constructors
import 'dart:math';
import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(home: BallPage()),
    );

class BallPage extends StatelessWidget {
  const BallPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade900,
      appBar: AppBar(
        backgroundColor: Colors.black26,
        centerTitle: true,
        title: Text(
          "Ask me Anything",
          style: TextStyle(
            fontFamily: "RobotoMono",
            fontSize: 25.0,
          ),
        ),
      ),
      body: Ball(),
    );
  }
}

class Ball extends StatefulWidget {
  const Ball({Key? key}) : super(key: key);

  @override
  State<Ball> createState() => _BallState();
}

class _BallState extends State<Ball> {
  int _ballno=1;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: TextButton(
        onPressed: () { setState(() {
          _ballno= Random().nextInt(5)+1;
        });
        },
        child: Image.asset('lib/images/ball$_ballno.png'),


      ),
    );
  }
}
