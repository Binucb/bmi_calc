// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors, deprecated_member_use, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFEEEEEE),
      appBar: AppBar(
        backgroundColor: Color(0xFF263238),
        automaticallyImplyLeading: false,
        title: const Text("BMi Calculator"),
      ),
      // ignore: deprecated_member_use
      // floatingActionButton: FloatingActionButton(
      //   onPressed: () {
      //     Navigator.push(
      //         context, MaterialPageRoute(builder: (context) => const SettingPage()));
      //   },
      //   child: const Icon(Icons.settings),
      //   backgroundColor: Colors.blueGrey,
      // ),
      body: Column(
        
        children: <Widget>[
          Container(
            height:90.0,
            child: SfLinearGauge(
              minimum: 0,
              maximum: 150,
            ranges: <LinearGaugeRange>[ 
                  //First range
                LinearGaugeRange(
                  startValue: 0,
                  endValue: 50,
                  color: Colors.green
                ),
                //Second range
                LinearGaugeRange(
                  startValue: 50,
                  endValue: 100,
                  color: Colors.blue
                ),
                //Third range
                LinearGaugeRange(
                  startValue: 100,
                  endValue: 150,
                  color: Colors.red
                ),
              ],
              markerPointers: [LinearShapePointer(value: 60,color: Colors.indigo),],
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Container(
                child: Text(
                  "BMI",
                  style: TextStyle(
                        fontSize: 25,
                        color: Colors.black,
                        letterSpacing: 2,
                        fontWeight: FontWeight.w500
                        ),
                  ),
              ),
              Container(
                child: Text(
                  "00.00",
                  style: TextStyle(
                        fontSize: 35,
                        color: Colors.blueGrey,
                        letterSpacing: 2,
                        fontWeight: FontWeight.w500
                        ),
                  ),
              ),
              SizedBox(height: 5),
              Container(
                width: 60.0,
                height: 60.0,
                decoration: BoxDecoration(
                  color: Color(0xFFB71C1C),
                  border: Border.all(width: 0),
                  shape: BoxShape.circle
                ),
                child:Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                    child: Text(
                      "00",
                      style: TextStyle(
                        fontSize: 25,
                        color: Colors.white,
                        letterSpacing: 2,
                        fontWeight: FontWeight.w500
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 5),
              Container(
                child: Text(
                      "Overweight",
                      style: TextStyle(
                        fontSize: 8,
                        color: Color(0xFFB71C1C),
                        letterSpacing: 2,
                        fontWeight: FontWeight.w500
                        ),
                      ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Container(
                width: 80.0,
                height: 60.0,
                child: RaisedButton(
                    onPressed: (){ },
                    shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10.0))),
                    child: Icon(FontAwesomeIcons.male,size: 50,), 
                    textColor: Colors.white,
                    splashColor: Colors.black,
                    color: Color(0xFF455A64),
                    ),
              ),
              Container(),
              Container(
                width: 80.0,
                height: 60.0,
                child: RaisedButton(
                    onPressed: (){ },
                    shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10.0))),
                    child: Icon(FontAwesomeIcons.female,size: 50,), 
                    textColor: Colors.white,
                    splashColor: Colors.black,
                    color: Color(0xFF455A64),
                    ),
              ),
            ],
          ),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Container(
                    child: Text(
                      "AGE",
                      style: TextStyle(
                        fontSize: 10,
                        color: Colors.blueGrey,
                        letterSpacing: 2,
                        fontWeight: FontWeight.w500),
                      ),
                  ),
                  Container(
                    child: SizedBox(
                      width: 100,
                      child: TextField(
                          textAlign: TextAlign.center,
                          decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: "00",
                        ),
                      )
                    )
                  ),
                  Container(
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(""),
                    )
                  ),
                ],
              ),
              Column(

                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Container(
                    child: Text(
                      "HEIGHT",
                      style: TextStyle(
                        fontSize: 10,
                        color: Colors.blueGrey,
                        letterSpacing: 2,
                        fontWeight: FontWeight.w500),
                      ),
                  ),
                  Container(
                    child: SizedBox(
                      width: 100,
                      child: TextField(
                          textAlign: TextAlign.center,
                          decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: "00",
                        ),
                      )
                    )
                  ),
                  Container(
                    child: Text("cm"),
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Container(
                    child: Text(
                      "WEIGHT",
                      style: TextStyle(
                        fontSize: 10,
                        color: Colors.blueGrey,
                        letterSpacing: 2,
                        fontWeight: FontWeight.w500),
                      ),
                  ),
                  Container(
                    child: SizedBox(
                      width: 100,
                      child: TextField(
                          textAlign: TextAlign.center,
                          decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: "00",
                        ),
                      )
                    )
                  ),
                  Container(
                    child: Text("kg"),
                  ),
                ],
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Container(
                width: 200,
                child: RaisedButton(
                    onPressed: (){ print('Button Clicked.'); },
                    shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10.0))),
                    child: Text('Check Your BMi', 
                          style: TextStyle(color: Colors.white),),
                    textColor: Colors.white,
                    splashColor: Colors.black,
                    color: Color(0xFF263238),
                    ),
              ),
            ],
          ),
        ],
      )
    );
  }
}
BoxDecoration myBoxDecoration() {
  return BoxDecoration(
    border: Border.all(),
  );
}