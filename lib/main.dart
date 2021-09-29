import 'dart:async';
import 'package:flutter/material.dart';
import 'home_screen.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({ Key? key }) : super(key: key);

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
      appBar: AppBar(
        title: const Text("splash screen"),
      ),
      body: const Center(child: Text('Binu Job-01')),
    );
  }
}
