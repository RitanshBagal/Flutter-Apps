import 'package:flutter/material.dart';
import 'package:hotel_booking/applications.dart';
import 'package:hotel_booking/newApplications.dart';
import 'home.dart';
void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}
