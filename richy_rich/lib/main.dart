import 'package:flutter/material.dart';

void main() {
  runApp(
  MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        title: Text('I AM RICH'),
        backgroundColor: Colors.blueGrey[900],
      ),
      body: Image(
        image: AssetImage('images/diamond.png'),
      ),
    ),
  ),
  );
}
