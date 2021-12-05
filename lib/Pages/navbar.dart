import 'package:flutter/material.dart';
import 'package:untitled/Pages/custom_animated_bottom_bar.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _currentIndex = 0;

  final _inactiveColor = Colors.grey;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black12,
      body: Column(
        children: <Widget>[
          getBody(),
        ],
      ),
      bottomNavigationBar: _buildBottomBar(),
    );
  }

  Widget _buildBottomBar() {
    return CustomAnimatedBottomBar(
      containerHeight: 70,
      backgroundColor: Colors.black,
      selectedIndex: _currentIndex,
      showElevation: true,
      itemCornerRadius: 24,
      curve: Curves.easeIn,
      onItemSelected: (index) => setState(() => _currentIndex = index),
      items: <BottomNavyBarItem>[
        BottomNavyBarItem(
          icon: FaIcon(FontAwesomeIcons.video),
          title: Text('Youtube'),
          activeColor: Colors.red,
          inactiveColor: _inactiveColor,
          textAlign: TextAlign.center,
        ),
        BottomNavyBarItem(
          icon: Icon(Icons.people),
          title: Text('Socials'),
          activeColor: Colors.purpleAccent,
          inactiveColor: _inactiveColor,
          textAlign: TextAlign.center,
        ),
        BottomNavyBarItem(
          icon: Icon(Icons.message),
          title: Text(
            'Notes',
          ),
          activeColor: Colors.pink,
          inactiveColor: _inactiveColor,
          textAlign: TextAlign.center,
        ),
        BottomNavyBarItem(
          icon: Icon(Icons.settings),
          title: Text('About'),
          activeColor: Colors.blue,
          inactiveColor: _inactiveColor,
          textAlign: TextAlign.center,
        ),
      ],
    );
  }

  Widget getBody() {
    List<Widget> pages = [
      Container(
        alignment: Alignment.center,
        child: Column(
          children: <Widget>[
            AppBar(
              title: Text("Youtube",
                  style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Colors.white)),
              backgroundColor: Colors.red,
            ),
            Row(
              children: <Widget>[
                Container(
                  child: Image.asset(
                    'images/ksc.png',
                    width: 200,
                    height: 200,
                  ),
                ),
                Column(
                  children: [
                    Text(
                      'Kabir Singh Codes',
                      style: TextStyle(
                        fontSize: 25,
                        color: Colors.white,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 75.0, bottom: 30),
                      child: Text(
                        '6.16K subcribers',
                        style: TextStyle(fontSize: 17, color: Colors.grey),
                      ),
                    ),
                  ],
                ),

              ],
            ),
            Container(
              child: Image.asset(
                'images/Thumb1.png',
              ),
            ),
            Row(
              children: <Widget>[
                Container(
                  child: Image.asset(
                    'images/ksc.png',
                    width: 90,
                    height: 90,
                  ),
                ),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 18.0),
                      child: Text(
                        'TEASER: Kabir Singh Codes',
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 20, bottom: 30),
                      child: Text(
                        'Kabir Singh Codes 172 views ',
                        style: TextStyle(fontSize: 15, color: Colors.grey),
                      ),
                    ),
                  ],
                ),

              ],
            ),
          ],
        ),
      ),
      Container(
        alignment: Alignment.center,
        child: Text(
          "Users",
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
        ),
      ),
      Container(
        alignment: Alignment.center,
        child: Text(
          "Messages",
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
        ),
      ),
      Container(
        alignment: Alignment.center,
        child: Text(
          "Settings",
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
        ),
      ),
    ];
    return IndexedStack(
      index: _currentIndex,
      children: pages,
    );
  }
}
