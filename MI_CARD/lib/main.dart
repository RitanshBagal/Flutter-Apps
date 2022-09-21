import 'package:flutter/material.dart';

void main() {
  runApp(
      MyApp())
  ;
}
class  MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.teal,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Center(
              child:  CircleAvatar(
                radius: 100.0,
                backgroundImage: AssetImage('images/rits.jpeg'),
              ),
            ),
            const Text(
              'Ritansh bagal',
              style: TextStyle(
                fontFamily: 'Pacifico',
              fontSize: 30.0,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),),
            Text(
              'FLUTTER DEVELOPER',
              style: TextStyle(
                fontFamily: 'SourceSansPro',
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
                color: Colors.teal.shade100,
                letterSpacing: 2.5,
              ),
            ),
              SizedBox(
               height: 20.0,
               width: 150.0,
               child: Divider(
                 color: Colors.teal.shade100,
               ),
             ),
             Card(
               margin: EdgeInsets.symmetric(vertical: 10.0,horizontal: 25.0),
               child: ListTile(
                 leading: const Icon(
                   Icons.phone,
                   color: Colors.teal,
                 ),
                 title: Text(' +91 7889986891',
                     style:TextStyle(
                         color: Colors.teal.shade900,
                         fontFamily: 'SourceSansPro',
                         fontSize: 20.0,
               ),
             ),
               ),
             ),
          Card(
            margin: EdgeInsets.symmetric(vertical: 10.0,horizontal: 25.0) ,
            child: ListTile(
              leading: const Icon(
                Icons.email,
                color: Colors.teal,
              ),
              title: Text(
                'ritanshbagal@gmail.com',
                  style: TextStyle(
                      fontFamily: 'SourceSansPro',
                      color: Colors.teal.shade900,
                      fontSize: 20.0,
                  ),
            ),
             ))],
        ),
        ),
        ),
      );
  }}
