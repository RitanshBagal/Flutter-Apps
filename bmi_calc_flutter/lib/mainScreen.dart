import 'dart:math';

import 'package:flutter/material.dart';
import 'data_container.dart';
import 'containerBox.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
class mainScreen extends StatefulWidget {

  static const activeColor = Color(0xFF0073dd);
  static const inactiveColor = Color(0xFF212121);

  @override
  State<mainScreen> createState() => _mainScreenState();
}

class _mainScreenState extends State<mainScreen> {
  Color maleBoxColor = mainScreen.activeColor;
  Color femaleBoxColor = mainScreen.inactiveColor;
  int height = 180;
  int weight = 70;
  int age = 26;
  String result = "";
  double bmi = 0;
  String resultDetails = "result here";

  void updateBoxColor(int gender){
    if(gender == 1) {
      setState(() {

      });
      if (maleBoxColor == mainScreen.inactiveColor) {
        maleBoxColor = mainScreen.activeColor;
        femaleBoxColor = mainScreen.inactiveColor;
      }
      else {
        maleBoxColor = mainScreen.inactiveColor;
        femaleBoxColor = mainScreen.activeColor;
      }
    }
      else{
        if(femaleBoxColor == mainScreen.inactiveColor){
          femaleBoxColor = mainScreen.activeColor;
          maleBoxColor = mainScreen.inactiveColor;
        }
        else{
          femaleBoxColor = mainScreen.inactiveColor;
          maleBoxColor = mainScreen.activeColor;
        }
    }
  }

  String ?calculateBMI(int weight, int height){
    bmi = weight/pow(height/100,2);
    return bmi.toStringAsFixed(1);
  }

  String getInterpretation(bmi){
    if(bmi>=25){
      return 'You have a higher than normal body weight. Try to move your body more.';
    }
    else if(bmi>18.5){
      return 'You have a normal body weight. Keep going with your daily routine.';
    }
    else{
      return 'You have a lower than normal body weight. EAT! EAT! EAT!';
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Center(child: Text("BMI Calculator")),
      ),
      body: Column(
        children: [
          Expanded(child: Row(
            children: [
              Expanded(
                child: GestureDetector(
                  onTap: (){
                    setState(() {
                      updateBoxColor(1);
                    });
                  },
                    child: containerBox(
                      boxColor: maleBoxColor,
                      childWidget: dataContainer(icon: FontAwesomeIcons.mars, title: 'MALE'),
                    ),
                ),
                 ),
              Expanded(
                child: GestureDetector(
                  onTap: (){
                    setState(() {
                      updateBoxColor(2);
                    });
                  },
                  child: containerBox(
                    boxColor: femaleBoxColor,
                    childWidget: dataContainer(icon: FontAwesomeIcons.venus,title: 'FEMALE'),
                ),
                ),
              ),
            ],
          )),
          Expanded(child: containerBox(
            boxColor: mainScreen.inactiveColor,
            childWidget: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text('HEIGHT',
                style: dataContainer.textStyle1,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.baseline,
                  textBaseline: TextBaseline.alphabetic,
                  children: [
                    Text(height.toString(),
                    style: dataContainer.textStyle2,),
                    const Text('cm',
                    style: dataContainer.textStyle1,),
                  ],
                ),
                Slider(value: height.toDouble(),
                    min: 120,
                    max: 220,
                  activeColor: mainScreen.activeColor,
                  inactiveColor: mainScreen.inactiveColor,
                  onChanged: (double newValue){
                  setState(() {
                    height = newValue.round();
                  });
                  },
                )
              ],
            ),
          ),
          ),
          Expanded(child: Row(
            children: [
              Expanded(
                child: containerBox(
                boxColor: mainScreen.inactiveColor,
                childWidget: Column(
                  mainAxisAlignment: MainAxisAlignment.center ,
                  children: [
                    const Text('WEIGHT',
                    style: dataContainer.textStyle1,),
                    Text(weight.toString(),
                    style: dataContainer.textStyle2,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        FloatingActionButton(
                          onPressed: (){
                            setState(() {
                              weight++;
                            });
                          },
                          backgroundColor: mainScreen.activeColor,
                          child: Icon(FontAwesomeIcons.plus,color: Colors.white,),
                        ),
                        const SizedBox(width: 10.0),
                        FloatingActionButton(
                          onPressed: (){
                            setState(() {
                              if(weight>0){
                                weight--;
                              }
                            });
                          },
                          backgroundColor: mainScreen.activeColor,
                          child: const Icon(FontAwesomeIcons.minus,color: Colors.white,),
                        ),
                      ],
                    ),

                  ],
                )
              ),
              ),
              Expanded(child: containerBox(
                boxColor: mainScreen.inactiveColor,
                childWidget: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'AGE',
                    style: dataContainer.textStyle1,),
                    Text(age.toString(),
                    style: dataContainer.textStyle2,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        FloatingActionButton(
                          onPressed: (){
                            setState(() {
                              age++;
                            });
                          },
                          backgroundColor: mainScreen.activeColor,
                          child: const Icon(FontAwesomeIcons.plus,color: Colors.white,),
                        ),
                        const SizedBox(width: 10.0),
                        FloatingActionButton(
                          onPressed: (){
                            setState(() {
                              if(age>0){
                                age--;
                              }
                            });
                          },
                          backgroundColor: mainScreen.activeColor,
                          child: const Icon(FontAwesomeIcons.minus,color: Colors.white,),
                        ),
                  ],
                ),
    ],
              ),
          ),
    ),
          ],
          )),
          GestureDetector(
            onTap: (){
              setState(() {
                result = calculateBMI(weight, height)!;
                resultDetails = getInterpretation(bmi);
                showDialog(context: context, builder: (BuildContext context) {
                  return Dialog(
                    backgroundColor: mainScreen.inactiveColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),

                    ),
                    child: Container(
                      color: mainScreen.inactiveColor,
                      height: 200.0,
                      margin: const EdgeInsets.all(10.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text('Result',
                            style: dataContainer.textStyle1,),
                          Text(result.toString(),
                            style: dataContainer.textStyle2,),
                          Text(resultDetails,
                            style: dataContainer.textStyle1,),
                        ],
                      ),
                    ),
                  );
                }

                );
              });
            },
            child: Container(
              width: double.infinity,
              height: 80.0,
              color: mainScreen.activeColor,
              margin: const EdgeInsets.only(top: 10.0),
              child: const Center(
                child: Text('CALCULATE',
                  style: dataContainer.textStyle3,
                ),
              ),
            ),
          ),
        ],
    ),
      );
  }
}



