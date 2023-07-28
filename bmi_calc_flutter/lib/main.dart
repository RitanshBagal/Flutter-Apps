import 'package:flutter/material.dart';
import 'mainScreen.dart';
void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: const Color(0xFF000000),
        scaffoldBackgroundColor: const Color(0xFF000000),
      ),
      home: mainScreen(),
    );
  }
}

