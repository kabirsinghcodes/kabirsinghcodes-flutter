import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:untitled/Pages/navbar.dart';

final List<String> images = [
  'images/3d_img_1.png',
  'images/3d_img_2.png',
  'images/3d_img_3.png',
  'images/3d_img_4.png'
];

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black54,
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Flexible(
              child: Center(
                child: CarouselSlider.builder(
                  itemCount: images.length,
                  itemBuilder: (context, index, realIndex) {
                    final img = images[index];
                    return buildImage(img, index);
                  },
                  options: CarouselOptions(
                    height: 450,
                    autoPlay: true,
                  ),
                ),
              ),
            ),
            Container(
              height: 250,
              width: double.infinity,
              decoration: const BoxDecoration(
                color: Color(0xff262a3f),
                borderRadius: BorderRadius.vertical(
                  top: Radius.circular(50),
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const Text(
                    'Kabir Singh Codes',
                    style: TextStyle(
                      fontFamily: 'Pacifico',
                      fontSize: 45,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Container(
                    width: 80,
                    height: 80,
                    decoration: BoxDecoration(
                      color: Colors.pink,
                      border: Border.all(
                        color: Colors.pink,
                      ),
                      borderRadius: const BorderRadius.all(
                        Radius.circular(45),
                      ),
                    ),
                    child: IconButton(
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
                  ),
                  const Text(
                    "Let's Go",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget buildImage(String img, int index) => Container(
        margin: const EdgeInsets.symmetric(horizontal: 12),
        child: Image.asset(
          img,
          fit: BoxFit.fill,
        ),
      );
}
