// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors, deprecated_member_use, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class SettingPage extends StatelessWidget {
  const SettingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFEEEEEE),
      appBar: AppBar(
        backgroundColor: const Color(0xFF263238),
        centerTitle: true,
        title: const Text("Settings"),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 20,
            ),
            Text(
              "Profile Values",
              style: TextStyle(fontSize: 40, color: Colors.brown),
            ),
            SizedBox(
              height: 20,
            ),
            Text("Age : 25", style: TextStyle(fontSize: 25)),
            Text("Height : 5.7'", style: TextStyle(fontSize: 25)),
            Text("Weight : 25 Kg", style: TextStyle(fontSize: 25)),
            SizedBox(
              height: 20,
            ),
            Text("Results : 00.00",
                style: TextStyle(fontSize: 40, color: Colors.brown)),
            Divider(
              thickness: 1,
              color: Colors.black,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      SizedBox(
                          width: 100,
                          child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  primary: Color(0xFF263238)),
                              onPressed: () {},
                              child: Text(
                                "Rate",
                                style: TextStyle(fontSize: 16),
                              ))),
                      SizedBox(
                          width: 100,
                          child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  primary: Color(0xFF263238)),
                              onPressed: () {},
                              child: Text(
                                "Share",
                                style: TextStyle(fontSize: 16),
                              ))),
                      SizedBox(
                          width: 100,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                primary: Color(0xFF263238)),
                            onPressed: () {},
                            child: Text(
                              "Export",
                              style: TextStyle(fontSize: 16),
                            ),
                          ))
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SizedBox(
                    height: 140,
                    width: 120,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            primary: Color(0xFF263238)),
                        onPressed: () {},
                        child: Text(
                          "Feedback",
                          style: TextStyle(fontSize: 16),
                        )),
                  ),
                )
              ],
            ),
            SizedBox(
                width: 200,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(primary: Color(0xFF263238)),
                    onPressed: () {},
                    child: Text(
                      "Reset",
                      style: TextStyle(fontSize: 16),
                    )))
          ],
        ),
      ),
    );
  }
}
