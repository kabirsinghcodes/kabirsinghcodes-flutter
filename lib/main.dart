import 'package:flutter/material.dart';
import 'package:untitled/Pages/homepage.dart';
import 'package:untitled/Pages/squid_game.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Countrol4Offical',
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.black,
          title: const Text(
            'Kabir Singh Codes',
            style: TextStyle(fontSize: 35),
          ),
        ),
        body: SquidGame(),
      ),
    );
  }
}
