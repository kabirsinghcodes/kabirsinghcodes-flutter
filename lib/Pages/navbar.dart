import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:untitled/Pages/youtubepage.dart';
import 'package:simple_icons/simple_icons.dart';
import 'package:untitled/Pages/custom_animated_bottom_bar.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:untitled/Pages/linkedin_page.dart';
import 'package:untitled/Pages/github_page.dart';

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
          icon: const FaIcon(FontAwesomeIcons.youtube),
          title: const Text('Youtube'),
          activeColor: Colors.red,
          inactiveColor: _inactiveColor,
          textAlign: TextAlign.center,
        ),
        BottomNavyBarItem(
          icon: const Icon(SimpleIcons.linkedin),
          title: const Text('Linkedln'),
          activeColor: Colors.blue,
          inactiveColor: _inactiveColor,
          textAlign: TextAlign.center,
        ),
        BottomNavyBarItem(
          icon: const Icon(SimpleIcons.github),
          title: const Text(
            'Github',
          ),
          activeColor: Colors.lightGreen,
          inactiveColor: _inactiveColor,
          textAlign: TextAlign.center,
        ),
        BottomNavyBarItem(
          icon: const Icon(SimpleIcons.instagram),
          title: const Text('Instagram'),
          activeColor: Colors.purple,
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
        child: const YoutubePage(),
      ),
      Container(
        color: Color(0xffb1D2226),
        alignment: Alignment.center,
        child: const LinkedinPage(),
      ),
      Container(
        alignment: Alignment.center,
        child: Githubpage(),
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
