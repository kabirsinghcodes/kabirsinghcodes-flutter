import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:simple_icons/simple_icons.dart';
import 'package:untitled/Pages/custom_animated_bottom_bar.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:untitled/Pages/linkedin_page.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

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
      body: SafeArea(
        child: Column(
          children: <Widget>[
            getBody(),
          ],
        ),
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
          icon: const FaIcon(FontAwesomeIcons.video),
          title: const Text('Youtube'),
          activeColor: Colors.red,
          inactiveColor: _inactiveColor,
          textAlign: TextAlign.center,
        ),
        BottomNavyBarItem(
          icon: const Icon(SimpleIcons.linkedin),
          title: const Text('Linkedln'),
          activeColor: Colors.purpleAccent,
          inactiveColor: _inactiveColor,
          textAlign: TextAlign.center,
        ),
        BottomNavyBarItem(
          icon: const Icon(SimpleIcons.github),
          title: const Text(
            'Github',
          ),
          activeColor: Colors.pink,
          inactiveColor: _inactiveColor,
          textAlign: TextAlign.center,
        ),
        BottomNavyBarItem(
          icon: const Icon(SimpleIcons.instagram),
          title: const Text('Instagram'),
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
              height: 100,
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
                          fontSize: 25,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "6.16K subscribers",
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 15,
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
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: const [
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      'TEASER: Kabir Singh Codes',
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      'Kabir Singh Codes • 172 views • 4 days ago',
                      style: TextStyle(color: Colors.grey),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Hey! I am an Educator | Mentor | Blogger and",
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                    Text(
                      "currently working at Unacademy Starting this",
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                    Text(
                      "channel as an initiative to provide good ....     ",
                      style: TextStyle(
                        color: Colors.grey,
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
        child: const LinkedinPage(),
      ),
      Container(
        alignment: Alignment.center,
        child: Column(
          children: <Widget>[
            AppBar(
              title: const Text("Github"),
            ),
          ],
        ),
      ),
      Container(
        alignment: Alignment.center,
        child: Column(
          children: <Widget>[
            AppBar(
              title: const Text("Instagram"),
            ),
          ],
        ),
      ),
    ];
    return IndexedStack(
      index: _currentIndex,
      children: pages,
    );
  }
}
