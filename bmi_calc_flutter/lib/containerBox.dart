import 'package:flutter/material.dart';
class containerBox extends StatelessWidget {
  const containerBox({required this.boxColor, required this.childWidget});
  final Color boxColor;
  final Widget childWidget;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: boxColor,
      ),
      child: childWidget,
    );
  }
}