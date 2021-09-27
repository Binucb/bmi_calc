import 'package:flutter/material.dart';

import 'Pages/setting.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text("BMi"),
      ),
      // ignore: deprecated_member_use
      body: const Center(child: Text('GB Job-2')),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => const SettingPage()));
        },
        child: const Icon(Icons.settings),
        backgroundColor: Colors.blueGrey,
      ),

    );
  }
}
