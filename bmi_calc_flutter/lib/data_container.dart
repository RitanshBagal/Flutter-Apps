import 'package:flutter/material.dart';
class dataContainer extends StatelessWidget {
  static const textStyle1 = TextStyle(
    color: Colors.white,
    fontSize: 20.0,
  );

  static const textStyle2 = TextStyle(
    color: Colors.white,
    fontSize: 60.0,
    fontWeight: FontWeight.w900,
  );
  static const textStyle3 = TextStyle(
    color: Colors.white,
    fontSize: 30.0,
    fontWeight: FontWeight.w900,
  );
  final IconData icon;
  final String title;
  const dataContainer({required this.icon, required this.title});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children:  [
        Icon(icon,
          size: 80.0,
          color: Colors.white,
        ),
        const SizedBox(
          height: 15.0,
        ),
        Text(title,
          style: textStyle1),
      ],
    );
  }
}