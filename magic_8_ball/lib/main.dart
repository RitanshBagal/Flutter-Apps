import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(
  MaterialApp(
    home: BallPage(),
  ),
);
class BallPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: Center(child: Text('Ask Me Anything')),
      ),
      body: Ball(),
      backgroundColor: Colors.blue,
    );
  }
}
class Ball extends StatefulWidget {

  @override
  State<Ball> createState() => _BallState();
}

class _BallState extends State<Ball> {
  int ballNumber = 1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: FlatButton(
        onPressed: () {
          setState((){
        ballNumber = Random().nextInt(5)+1;
          });
      },
      child: Image.asset('images/ball$ballNumber.png')
      ),
      );
  }
}