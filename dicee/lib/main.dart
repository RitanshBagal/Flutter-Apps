import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(
      MaterialApp(
        home: Scaffold(
          backgroundColor: Colors.red,
          appBar: AppBar(
            backgroundColor: Colors.red,
            title: const Center(child: Text('DICEE')),
          ),
          body:  DicePage(),
        ),

  ));
}
class DicePage extends StatefulWidget {
  const DicePage({Key? key}) : super(key: key);

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftdicenum = 1;
  int rightdicenum = 1;
  void onpressed(){
    setState(() {
      leftdicenum =Random().nextInt(6)+1;
      rightdicenum = Random().nextInt(6)+1;

    });
  }
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
          children: [
            Expanded(
              flex: 1,// we do not need flex in this case, but writing it just for myself
              child: FlatButton(
                onPressed: () {
                  onpressed();
                },
                child: Image.asset('images/dice$leftdicenum.png'),
              ),
            ),
            Expanded(
              flex: 1,
              child: FlatButton(
                  onPressed: () {
                    onpressed();
                  },
                  child: Image.asset('images/dice$rightdicenum.png')),
            ),
          ]
      ),
    );
  }
  }



