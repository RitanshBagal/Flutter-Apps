import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hotel_booking/home.dart';
import 'package:hotel_booking/newApplications.dart';
class Applications extends StatefulWidget {
  const Applications({Key? key}) : super(key: key);

  @override
  State<Applications> createState() => _ApplicationsState();
}

class _ApplicationsState extends State<Applications> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Applications',style:GoogleFonts.openSans(
              textStyle: TextStyle(
              fontSize: 35,
                fontWeight: FontWeight.bold,
                color: Colors.black54,
              ),),),
                      FloatingActionButton(
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>newApp()));
                        },
                          child: Icon(Icons.add,
                          ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      TextButton(
                        onPressed: (){
                          Navigator.pop(context,HomePage());
                        },
                        child: Text('Current',style: GoogleFonts.openSans(
                            textStyle: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.black54,
                            ),),),
                      ),
                      SizedBox(
                        width: 55,
                      ),
                      Text('Executed',style: GoogleFonts.openSans(
                          textStyle: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.black54,
                          ),),),
                      SizedBox(
                        width: 55,
                      ),
                      Text('All',style: GoogleFonts.openSans(
                      textStyle: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black54,
                      ),),),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          card(),
                          card(),
                        ],
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Popular Stays',style: GoogleFonts.openSans(
                    textStyle: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black54,
                    ),),),
                      Icon(Icons.display_settings_sharp)
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        Container(
                          width: 200,
                          height: 200,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image.asset(
                              'images/eg.png',  // Replace with your asset image path
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 25,
                        ),
                        Container(
                          width: 200,
                          height: 200,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image.asset(
                              'images/eg.png',  // Replace with your asset image path
                              fit: BoxFit.cover,
                            ),
                          ),
                        )



                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        Container(
                          width: 200,
                          height: 200,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image.asset(
                              'images/eg.png',  // Replace with your asset image path
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 25,
                        ),
                        Container(
                          width: 200,
                          height: 200,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image.asset(
                              'images/eg.png',  // Replace with your asset image path
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                   BottomNavigationBar(
                    items: [
                      BottomNavigationBarItem(
                        icon: Icon(Icons.widgets),
                        label: 'Applications',
                      ),
                      BottomNavigationBarItem(
                        icon: Icon(Icons.message),
                        label: 'Community',
                      ),
                      BottomNavigationBarItem(
                        icon: Icon(Icons.settings),
                        label: 'Settings',
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class card extends StatelessWidget {
  const card({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
        side:BorderSide(
          width: 1,
          color: Colors.grey,
        )
      ),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Villa for 16 guests in Ubud',style: GoogleFonts.openSans(
          textStyle: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.bold,
            color: Colors.black54,
          ),),),
                SizedBox(
                  width: 80,
                ),
                Icon(Icons.local_fire_department_rounded,color: Colors.orangeAccent),
                Text('3 offers'),
              ],
            ),
            Row(
              children: [
                Text('Nov 20, 2023 - Dec 4, 2023                                                    ',style: TextStyle(color: Colors.grey),),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
             applFeatures(colour: Colors.greenAccent, title: '16 guests',),
                applFeatures(colour: Colors.indigo,title: '5 bedrooms',),
                applFeatures(colour: Colors.green,title: '\$1400 - \$1800',),
              ],
            ),
            Row(
              children: [
                applFeatures(colour: Colors.blue,title: 'open pool',),
                applFeatures(colour: Colors.deepOrange,title: 'kitchen',),
                applFeatures(colour: Colors.purpleAccent,title: 'wifi',),
                SizedBox(width: 100),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class applFeatures extends StatelessWidget {
  const applFeatures({Key? key, this.colour, this.title}) : super(key: key);
  final Color?colour;
  final String? title;
  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(120),
      ),
      color: colour,
      child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: Row(
          children: [
            Text(title!,style: GoogleFonts.openSans(
              textStyle: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),),),
          ],
        ),
      ),
    );
  }
}

