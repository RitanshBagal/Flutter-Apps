import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hotel_booking/applications.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child:SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(Icons.arrow_left,size: 47,),
                      Icon(Icons.bookmark,size: 47,color: Colors.deepPurpleAccent,),
                    ],
                  ),

                  Text('Sunshine Grand Villa Resort & Spa',style: GoogleFonts.openSans(
                    textStyle: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.black54,
                    ),
                  )),
                  Row(
                    children: [
                      Icon(Icons.star,color: Colors.orangeAccent,),
                      SizedBox(
                        width: 5,
                      ),
                      Text('4.9',style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),),
                      SizedBox(
                        width: 5  ,
                      ),
                      Text('120 reviews',style: TextStyle(
                        color: Colors.black54,
                      ),),
                    ],
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        Container(
                          width: 300,
                          height: 300,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image.asset(
                              'images/eg.png',  // Replace with your asset image path
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Container(
                          width: 300,
                          height: 300,
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
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Icon(Icons.location_on,color:Colors.orangeAccent),
                      SizedBox(
                        width: 10,
                      ),
                      Text('Kecamatan Kuta Utara, Bali,\n Inoonesia',style: TextStyle(decoration: TextDecoration.underline,color: Colors.black54)),
                      SizedBox(
                        width: 110,
                      ),
                      CircleAvatar(
                        radius: 25,
                        backgroundImage: AssetImage('images/eg.png'),
                      )
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Text('Features',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25, color: Colors.black54,
                        ),
                        ),
                      ],
                    ),
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        features(iconColor: Colors.blue),
                        features(iconColor: Colors.yellow),
                        features(iconColor: Colors.orangeAccent),
                        features(iconColor: Colors.pink,),
                        features(iconColor: Colors.teal,),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Text('About Villa',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25, color: Colors.black54,
                        ),
                        ),
                      ],
                    ),
                  ),
                  Column(
                    children: [
                      Text(
                        'Welcome to Luxurious Oasis Hotel, where elegance meets comfort in the heart of a vibrant city. Our hotel offers a seamless blend of modern sophistication and warm hospitality, providing an unforgettable experience for every guest.',
                        softWrap: true,
                        style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                          color: Colors.black54,
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Colors.amber,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(26),
                          ),
                        ),
                          onPressed: (){
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                builder: (context) => Applications(),
                            ),
                            );
                      }, child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 15,horizontal: 40),
                        child: Text(
                          'Book it for \$1400',
                            style: GoogleFonts.openSans(
                              textStyle: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                                color: Colors.black54,
                              ),
                            ),),
                        ),

                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        )

        ),

    );
  }
}

class features extends StatelessWidget {
  const features({Key? key,this.iconColor, this.title,this.iicon}) : super(key: key);
  final Color? iconColor;
  final String? title;
  final Icon? iicon;

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(120),
      ),
      color: iconColor,
      child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: Row(
          children: [
            Icon(icon);
            Text('7 bedrooms',style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),),
          ],
        ),
      ),
    );
  }
}