import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

class Githubpage extends StatelessWidget {
  const Githubpage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: <Widget>[
          AppBar(
            centerTitle: true,
            title: Text(
              "Github",
              style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
            backgroundColor: Colors.green,
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            height: 290,
            color: Color(0xff22272E),
            child: Column(
              children: [
                Row(
                  children: [
                    Padding(
                      padding:
                          const EdgeInsets.only(right: 20.0, top: 20, left: 10),
                      child: CircleAvatar(
                        radius: 40,
                        backgroundImage: NetworkImage(
                            'https://avatars.githubusercontent.com/u/69685373?v=4'),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: RichText(
                        text: TextSpan(
                          text: 'Kabir Singh ',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 35,
                              fontWeight: FontWeight.bold),
                          children: const <TextSpan>[
                            TextSpan(
                                text: '\n kabirsinghcodes',
                                style: TextStyle(
                                    color: Color(0xffADBAC7),
                                    fontSize: 17,
                                    fontWeight: FontWeight.normal)),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10.0),
                  child: Text(
                    'Hey, there Nice to meet you ✌ I am an  educator at unacademy and i write technical blogs for Scaler academy too!',
                    style: TextStyle(
                      color: Color(0xffADBAC7),
                      fontSize: 18,
                    ),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15.0),
                  child: Row(
                    children: <Widget>[
                      Icon(
                        Icons.domain_outlined,
                        color: Colors.grey[500],
                      ),
                      Text(
                        ' Unacademy      ',
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      ),
                      Icon(
                        Icons.location_on_outlined,
                        color: Colors.grey[500],
                      ),
                      Text(
                        'Pune',
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15.0),
                  child: Row(
                    children: [
                      Icon(
                        Icons.person_outline_rounded,
                        color: Colors.grey[500],
                      ),
                      Text(
                        '  42 followers 	•  1 following',
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          Container(
            child: Column(
              children: <Widget>[],
            ),
          ),
        ],
      ),
    );
  }
}
