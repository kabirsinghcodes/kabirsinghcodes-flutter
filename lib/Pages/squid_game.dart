////////////////////////////////////////////
///follor For more ig: @Countrol4offical
///@countrolfour@gmail.com
////////////////////////////////////////////
import 'dart:async';

import 'package:flutter/material.dart';
import 'elastic_drawer.dart';
import 'package:untitled/Pages/navbar.dart';

class SquidGame extends StatefulWidget {
  SquidGame({Key? key}) : super(key: key);

  @override
  _SquidGameState createState() => _SquidGameState();
}

class _SquidGameState extends State<SquidGame> {
  bool _freeze = true;
  late Timer _timer;

  _SquidGameState() {
    _timer = Timer(const Duration(seconds: 3), () {
      setState(() {
        _freeze = false;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return ElasticDrawer(
      mainColor: Colors.white,
      drawerColor: Colors.black,
      mainChild: Column(children: [
        Expanded(
          child: Image.network(
            'https://images.unsplash.com/photo-1634193295627-1cdddf751ebf?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1287&q=80',
            fit: BoxFit.cover,
          ),
        ),
      ]),
      drawerChild: _freeze
          ? Container()
          : Column(children: [
              Expanded(
                child: Image.network(
                  'https://images.unsplash.com/photo-1634195130430-2be61200b66a?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1287&q=80',
                  fit: BoxFit.cover,
                ),
              ),
              IconButton(
                color: Colors.black,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const MyHomePage(),
                    ),
                  );
                },
                icon: const Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.white,
                  size: 40,
                ),
              ),
            ]),
    );
  }
}
