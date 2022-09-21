import 'package:flutter/material.dart';

void main() {
  runApp(
      MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            title: Center(child: Text('I Am Poor')),
            backgroundColor: Colors.amber[900],
          ),
          body: Center(child: Image(image: AssetImage('images/poor.jpg'))),
          backgroundColor: Colors.amber,
        ),
  ));
}