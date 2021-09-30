import 'package:flutter/material.dart';

import 'home_screen.dart';
//import 'home_screen.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    // ignore: todo
    // TODO: implement initState
    super.initState();
    Future.delayed(
        const Duration(seconds: 8),
        () => Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const Home()),
            ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Image.network(
              "https://firebasestorage.googleapis.com/v0/b/wm-sd-ld.appspot.com/o/bmi2.gif?alt=media&token=9db207ab-1db6-48d6-b445-ef36fcf3c5b0"),
          const Text("Loading...")
        ]),
      ),
    );
  }
}
