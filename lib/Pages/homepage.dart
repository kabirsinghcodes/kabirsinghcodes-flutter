// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:untitled/Pages/navbar.dart';
import 'package:cupertino_icons/cupertino_icons.dart';

class homepage extends StatelessWidget {
  const homepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:   AppBar(
        flexibleSpace: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: <Color>[
                    Colors.lightBlueAccent,
                    Colors.greenAccent,
                  ])
          ),
        ),
      ),
      backgroundColor: Colors.black12,
      body: SafeArea(
          child: Column(
            children: <Widget>[
              // ignore: prefer_const_constructors
              Center(
                child: Image.asset('images/ksc.png',
                width: 250,
                  height: 250,
                )
              ),
              const Text('Kabir Singh Codes',
              style: TextStyle(
                fontSize: 45,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
              ),
                  SizedBox(height: 15),
                  Expanded(
                    child: Stack(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              gradient: LinearGradient(
                                begin: Alignment.topRight,
                                end: Alignment.bottomLeft,
                                colors: [
                                  Colors.lightBlueAccent,
                                  Colors.greenAccent,
                                ],
                              ),
                              borderRadius: BorderRadius.only(topLeft: Radius.circular(30.0), topRight: Radius.circular(30.0) )

                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(18.0),
                          child: AnimatedTextKit(
                            animatedTexts: [
                              TypewriterAnimatedText(
                                'An App That Gives You Resources!',
                                textAlign: TextAlign.center,
                                textStyle: const TextStyle(
                                  fontSize: 32.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                            totalRepeatCount: 100,
                            pause: const Duration(milliseconds: 900),
                            displayFullTextOnTap: true,
                            stopPauseOnTap: true,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 150.0),
                          child: AnimatedTextKit(
                            animatedTexts: [
                              TypewriterAnimatedText(
                                'Notes, Videos, Problems, And Much More!',
                                textAlign: TextAlign.center,
                                textStyle: const TextStyle(
                                  fontSize: 32.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                            totalRepeatCount: 100,
                            pause: const Duration(milliseconds: 900),
                            displayFullTextOnTap: true,
                            stopPauseOnTap: true,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 380.0, left: 180),
                          child: FloatingActionButton.extended(onPressed: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context) => MyHomePage()));
                          },
                              backgroundColor: Colors.black45,
                              icon: Icon(Icons.app_registration),
                              label: Text(''))
                        )
                      ],
                    ),
                    ),
            ],
          )
      ),
    );
  }
}
