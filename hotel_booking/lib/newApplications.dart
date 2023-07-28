import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:swipeable_card_stack/swipeable_card_stack.dart';

class newApp extends StatefulWidget {
  const newApp({Key? key}) : super(key: key);

  @override
  State<newApp> createState() => _newAppState();
}

class _newAppState extends State<newApp> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Stack(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('New application',style: GoogleFonts.openSans(
                    textStyle: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.black54,
                    ),),),
                  SizedBox(
                    height: 10,
                  ),
                  Text('Create an application for the hosts indicating all\nthe necessary living conditioins',style: GoogleFonts.openSans(
                    textStyle: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),),),
                  SizedBox(height: 10),
                  Text('Destination',style: GoogleFonts.openSans(
                    textStyle: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black54,
                    ),),),
                  Card(
                    shape: RoundedRectangleBorder(
                      side: BorderSide(
                        color: Colors.black,
                        width: 1.0,
                      ),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Ubud',style: GoogleFonts.openSans(
                            textStyle: TextStyle(
                              fontSize: 26,
                              color: Colors.black54,
                            ),),),
                          Icon(Icons.not_interested_outlined),
                        ],
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      Text('Date',style: GoogleFonts.openSans(
                    textStyle: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black54,
                    ),),),
                      SizedBox(
                        width: 150,
                      ),
                      Text('Nights',style: GoogleFonts.openSans(
                        textStyle: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.black54,
                        ),),),
                    ],
                  ),
                  Row(
                    children: [
                      Card(
                        shape: RoundedRectangleBorder(
                          side: BorderSide(
                            color: Colors.black,
                            width: 1.0,
                          ),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('Sep,26,2023',style: GoogleFonts.openSans(
                                textStyle: TextStyle(
                                  fontSize: 20,
                                  color: Colors.black54,
                                ),),),
                              SizedBox(
                                width: 8,
                              ),
                              Icon(Icons.calendar_month),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(width: 25,),
                      Card(
                        shape: RoundedRectangleBorder(
                          side: BorderSide(
                            color: Colors.black,
                            width: 1.0,
                          ),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(11),
                          child: Container(
                            child: Text('10                                      '),
                          )
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text('Guests',style: GoogleFonts.openSans(
                        textStyle: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.black54,
                        ),),),
                      SizedBox(
                        width: 150,
                      ),
                      Text('Bedrooms',style: GoogleFonts.openSans(
                        textStyle: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.black54,
                        ),),),
                    ],
                  ),
                  Row(
                    children: [
                      Card(
                        shape: RoundedRectangleBorder(
                          side: BorderSide(
                            color: Colors.black,
                            width: 1.0,
                          ),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('Sep,26,2023',style: GoogleFonts.openSans(
                                textStyle: TextStyle(
                                  fontSize: 20,
                                  color: Colors.black54,
                                ),),),
                              SizedBox(
                                width: 8,
                              ),
                              Icon(Icons.calendar_month),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(width: 25,),
                      Card(
                        shape: RoundedRectangleBorder(
                          side: BorderSide(
                            color: Colors.black,
                            width: 1.0,
                          ),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Padding(
                            padding: const EdgeInsets.all(12),
                            child: Container(
                              child: Text('1                                        '),
                            )
                        ),
                      ),
                    ],
                  ),
                ],
              ),

            ],
          ),
        ),
      ),
    );
  }
}
