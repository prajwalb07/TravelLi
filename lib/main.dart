import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'info.dart';


void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Container(
            height: 1000,
            child: Column(
              children: <Widget>[
                Container(

                  height: 200,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(20.0),),
                          color: Colors.pinkAccent,
                        ),
                        width: 300,
//                        color: Colors.grey,
                      ),
                    ],
                  ),
                ),
//

                Expanded(
                  child: Container(
                    height: 400,
                    child: GridView.count(
                      crossAxisSpacing: 0,
                      mainAxisSpacing: 0,
                      scrollDirection: Axis.vertical,
                      crossAxisCount: 2 ,
                      children:<Widget>[
                        Cards(pic: 'images/lisbon_one.jpg',no: 1,city: 'Lisbon',country: '🇨Portugal'),
                        Cards(pic: 'images/MexicoCity.jpg',no: 2,city: 'Mexico City',country: 'Mexico',),
                        Cards(pic: 'images/bali.jpg',no: 3,city: 'Bali',country: 'Indonesia',),
                        Cards(pic: 'images/Berlin.jpg',no: 4,city: 'Berlin',country: 'Germany',),
                        Cards(pic: 'images/Belgrade.jpg',no: 5,city: 'Belgrade',country: 'Serbia',),
                        Cards(pic: 'images/Chaing_Mai.jpg',no: 6,city: 'Chaing Mai',country: 'Hungary',),
                        Cards(pic: 'images/prague.jpg',no: 7,city: 'Prague',country: 'Czechia',),
                        Cards(pic: 'images/Bangkok.jpg',no: 8,city: 'Bangkok',country: 'Thailand',),
                        Cards(pic: 'images/PuetoVallarta.jpg',no: 9,city: 'Pueto Vallarta',country: 'Mexico',),
                        Cards(pic: 'images/Istanbul.jpg',no: 10,city: 'Istanbul',country: 'Thailand',),
                        Cards(pic: 'images/Budapest.jpg',no: 11,city: 'Budapest',country: 'Budapest',),
                        Cards(pic: 'images/Kiev.jpg',no: 12,city: 'Kiev',country: 'Ukraine',),
                        Cards(pic: 'images/Warsaw.jpg',no: 13,city: 'Warsaw',country: 'Poland',),
                        Cards(pic: 'images/Cluj.jpg',no: 14,city: 'Cluj',country: 'Romania',),
                        Cards(pic: 'images/Bengaluru.jpg',no: 15,city: 'Bengaluru',country: 'India',),


                      ]
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class Cards extends StatelessWidget {
 Cards({this.pic,this.no,this.country,this.city});
 final String pic;
 final String city;
 final String country;
 final int no;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: InkWell(
        onTap: (){
          Navigator.push(context, MaterialPageRoute(builder: (context) => Info(qwert: no,)

          ),);
        },
        child: Container(
          height: 400,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(14),
            image: DecorationImage(
              image: AssetImage(pic),
              fit: BoxFit.fitWidth,
            )
          ),
        //   child: Image(
        //     image: AssetImage(pic),
        //     height: 400,
        //     width: 400,
        //     fit: BoxFit.fitWidth,
        //     colorBlendMode: BlendMode.darken,
        //     alignment: AlignmentDirectional(1,0,),
        //   ),
        // ),
        //   Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                  child: Text(city,
                    style: TextStyle(
                      foreground: Paint()
                        ..style = PaintingStyle.stroke
                        ..strokeWidth = 1
                        ..color = Colors.blue[700],
                      fontFamily: 'Merienda',
                      fontSize: 30,
                    ),
                  ),
                ),
                Text('country'),
                SizedBox(
                  height: 50,
                ),
                Align(
                  alignment: Alignment.bottomLeft,
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Container(
                      height: 30,
                      width: 30,
                      color: Colors.red,
                    ),
                  ),
                ),
              ],
            ),

          ),
      ),
    );
  }
}