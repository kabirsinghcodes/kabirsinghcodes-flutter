import 'package:flutter/material.dart';

class YoutubePage extends StatelessWidget {
  const YoutubePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Column(
      children: <Widget>[
        AppBar(
          centerTitle: true,
          title: const Text(
            "Youtube",
            style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: Colors.white),
          ),
          backgroundColor: Colors.red,
        ),
        Image.asset(
          "images/kabir_bg.PNG",
          height: 85,
          width: double.infinity,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Flexible(
              child: Image.asset("images/kabir_logo.png"),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: const [
                Text(
                  "Kabir Singh Codes",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,),
                ),
                SizedBox(height: 5,),
                Padding(
                  padding: EdgeInsets.only(right: 75.0),
                  child: Text(
                    "6.16K subscribers",
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 16,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
        const SizedBox(
          height: 20,
        ),
        Image.asset(
          'images/Thumb1.png',
        ),
        Row(
          children: <Widget>[
            Image.asset(
              'images/ksc.png',
              width: 90,
              height: 90,
            ),
            Column(
              children: const [
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: EdgeInsets.only(right: 55.0),
                  child: Text(
                    'TEASER: Kabir Singh Codes',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(right: 30.0),
                  child: Text(
                    'Kabir Singh Codes • 172 views • 4 days ago',
                    style: TextStyle(color: Colors.grey),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
              ],
            ),
          ],
        ),
      ],
    ),
    );
  }
}
