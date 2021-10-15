import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SecondDesign(),
    ),
  );
}

class SecondDesign extends StatelessWidget {
  List<String> images = [
    'assets/hall.jpeg',
    'assets/dinetable.jpeg',
    'assets/bedroom.jpeg',
    'assets/bathroom.jpeg'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff494a4b),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 420,
            width: 430,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/house.jpeg'),
                fit: BoxFit.fill,
              ),
            ),
            child: Column(
              children: [
                Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 39, left: 30),
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: CircleAvatar(
                          radius: 25,
                          backgroundColor: Colors.grey.shade200,
                          child: Icon(Icons.arrow_back, size: 33),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 265,
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 39, right: 30),
                      child: Align(
                        alignment: Alignment.topRight,
                        child: CircleAvatar(
                          radius: 25,
                          backgroundColor: Colors.grey.shade200,
                          child: Icon(Icons.favorite_border, size: 33),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 290,
                ),
                Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 30),
                      child: Align(
                        alignment: Alignment.bottomLeft,
                        child: Text(
                          'Vacation Home',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 30,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 45,
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 10),
                      child: Align(
                        alignment: Alignment.bottomRight,
                        child: Text(
                          '\$2390',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 34,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            // height: 480,
            color: Color(0xff494a4b),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 30, top: 15),
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: Icon(
                          Icons.star_rate,
                          size: 25,
                          color: Colors.yellow,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 2, top: 15),
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: Icon(
                          Icons.star_rate,
                          size: 25,
                          color: Colors.yellow,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 2, top: 15),
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: Icon(
                          Icons.star_rate,
                          size: 25,
                          color: Colors.yellow,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 2, top: 15),
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: Icon(
                          Icons.star_rate,
                          size: 25,
                          color: Colors.yellow,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 2, top: 15),
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: Icon(
                          Icons.star_half,
                          size: 25,
                          color: Colors.yellow,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 170,
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 5),
                      child: Align(
                        alignment: Alignment.topRight,
                        child: Text(
                          '/monthly',
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 40,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 30),
                  child: Text(
                    'Gallery',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),

                //List view

                Padding(
                  padding: EdgeInsets.only(left: 24),
                  child: Container(
                    height: 90,
                    width: 800,
                    child: ListView.separated(
                      scrollDirection: Axis.horizontal,
                      itemCount: 4,
                      separatorBuilder: (context, i) {
                        return SizedBox(
                          width: 10,
                        );
                      },
                      itemBuilder: (context, i) {
                        return Container(
                          height: 50,
                          width: 95,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage(images[i]),
                              fit: BoxFit.fill,
                            ),
                            borderRadius: BorderRadius.all(
                              Radius.circular(15),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
          //Details and fecilities

          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 20, top: 5),
                child: CircleAvatar(
                  radius: 7,
                  backgroundColor: Colors.blue,
                ),
              ),
              SizedBox(
                width: 9,
              ),
              Padding(
                padding: EdgeInsets.only(left: 1, top: 4),
                child: Text(
                  'Details',
                  style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ),
              SizedBox(
                width: 15,
              ),
              Padding(
                padding: EdgeInsets.only(top: 4),
                child: Text(
                  'Facilities',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.grey,
                  ),
                ),
              ),
            ],
          ),

          SizedBox(
            height: 30,
          ),
          Padding(
              padding: EdgeInsets.only(left: 20, right: 20),
              child: Text(
                'High on Bemal sits the lovely 1950s home that epitomizes mid-century style and history. Originally a two bedroom,one bath on a large 2,500 square foot lot, his home has been loving..........',
                style: TextStyle(fontSize: 15, color: Colors.white),
              )),

          //Text
          //Row with container
          SizedBox(
            height: 40,
          ),
          Padding(
            padding: EdgeInsets.only(left: 24),
            child: Row(
              children: [
                Container(
                  height: 60,
                  width: 120,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(12),
                      ),
                      color: Colors.white),
                  child: Align(
                    alignment: Alignment.center,
                    child: Text(
                      'Live',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Container(
                  height: 60,
                  width: 250,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(12),
                      ),
                      color: Colors.blue),
                  child: Align(
                    alignment: Alignment.center,
                    child: Text(
                      'Book Now',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
