import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'dart:core';
class Info extends StatefulWidget {
  final int qwert;
  Info({this.qwert});
  @override
  _InfoState createState() => _InfoState();
}

class _InfoState extends State<Info> {

 List  city     = ['Lisbon','Mexico City','Bali','Berlin','Belgrade','Budapest','Prague','Chiang Mai','Puerto Vallarta','Bangkok','Budapest','Kiev',' Warsaw',' Cluj','Bengaluru'];
 List  country  = ['Portugal','Mexico','Indonesia','Germany','Serbia','Hungary','Czechia','Thailand','Mexico''Thailand','Budapest','Ukraine','Poland','Romania','India'];
 List  racial   = ['60','40','80','80','60','40','40','40','40','40','60','80','60','80','100'];
 List  fun      = ['80','80','80','100','80','80','100','80','60','80','80','80','80','80','80'];
 List  safety   = ['75','38','75','80','50','50','50','75','50','80','80','75','30','30','40'];
 List  nomadsc  = ['95','90','90','90','89','88','88','88','84','84','83','80','80','79','80'];


  @override
  Widget build(BuildContext context) {
    print(widget.qwert);
    return Container(
      color: Color(0xFF7bdff2),
      child: Container(
        margin: EdgeInsets.all(30.0),
       decoration: BoxDecoration(
       color: Color(0xFFb2f7ef),
       shape: BoxShape.rectangle,
       borderRadius: BorderRadius.only(
         topLeft: Radius.circular(25.0),
         bottomRight: Radius.circular(25.0),
       ),
       ),
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(14.0),
              child: Container(
                alignment: Alignment.topCenter,
                height: 100,
                width: 200,
                color: Colors.blueGrey,
                child: Column(
                  children: [
                    // Container(
                    //   height: 50,
                    //   width: 50,
                    //   color: Colors.pinkAccent,
                    //   child: Icon(Icons.home_filled),
                    // ),
                    Text(city[widget.qwert],style: TextStyle(
                      fontSize: 20,
                    ),),
                    Text(country[widget.qwert],style: TextStyle(
                      fontSize: 20,
                    ),),
                  ],
                ),
              ),
            ),

            Column(
              children: [
                Stat(title: 'Nomad Score',percnt: nomadsc[widget.qwert] ,loader:  double.parse(nomadsc[widget.qwert])/100,),
                Stat(title: 'Fun',percnt: fun[widget.qwert],loader:  double.parse(fun[widget.qwert])/100,),
                Stat(title: 'Safety',percnt: safety[widget.qwert],loader:  double.parse(safety[widget.qwert])/100,),
                Stat(title:'Racial Tolerance',percnt: racial[widget.qwert],loader:  double.parse(racial[widget.qwert])/100,),
              ],
            ),
            SizedBox(height: 35,),


          ],
        ),
      ),
    );
  }
}

class Stat extends StatelessWidget {

  Stat({this.title,this.percnt,this.loader});
  final String title;
  final String percnt;
  final double loader;

  @override
  Widget build(BuildContext context) {
    print(loader);
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: CircularPercentIndicator(
            radius: 100.0,
            lineWidth: 13.0,
            animation: true,
            percent: loader,
            center: new Text(
               percnt+'%',
              style:
              TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
            ),
            circularStrokeCap: CircularStrokeCap.round,
            progressColor: Colors.purple,
          ),
        ),
        // Divider(
        //   color: Colors.black
        // ),
        SizedBox(
          width: 40,
        ),
        Container(
          alignment: Alignment.centerRight,
          height: 60,
          width: 200,
          color: Colors.blueGrey,
          child: Center(
            child: Text(title,style: TextStyle(
              fontSize: 20,
            ),),
          ),
        )
      ],
    );
  }
}


