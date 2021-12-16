import 'package:flutter/material.dart';
import 'package:simple_icons/simple_icons.dart';

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
          SizedBox(
            height: 10,
          ),
          Container(
            width: double.infinity,
            color: Color(0xff22272E),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    border: Border.symmetric(
                      horizontal: BorderSide(color: Colors.white),
                    ),
                  ),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'Hi 👋, I\'m Kabir Singh',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 35,
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Image.network(
                        'https://user-images.githubusercontent.com/69685373/113927388-0ae87200-980b-11eb-97e7-00ad33c7df97.png',
                        height: 80,
                        width: 80,
                      ),
                      SizedBox(
                        height: 20,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'An Educator at Unacademy from India',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Image.network(
                    'https://user-images.githubusercontent.com/69685373/113927626-5bf86600-980b-11eb-95f3-7d4f0bc29c1b.png'),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(5),
                          topRight: Radius.zero,
                          bottomLeft: Radius.circular(5),
                          bottomRight: Radius.zero,
                        ),
                      ),
                      child: Padding(
                        padding: EdgeInsets.only(left: 10, right: 10),
                        child: Text(
                          "Profile views",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.zero,
                          topRight: Radius.circular(5),
                          bottomLeft: Radius.zero,
                          bottomRight: Radius.circular(5),
                        ),
                      ),
                      child: Padding(
                        padding: EdgeInsets.only(left: 10, right: 10),
                        child: Text(
                          "1,178",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Image.asset('images/achivements.png'),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Container(
                      decoration: const BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.zero,
                          topRight: Radius.zero,
                          bottomLeft: Radius.zero,
                          bottomRight: Radius.zero,
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 10, right: 10),
                        child: Row(
                          children: [
                            const Icon(
                              SimpleIcons.twitter,
                              color: Colors.blue,
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Text(
                              "Follow".toUpperCase(),
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                              ),
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            const Text(
                              "KABIRSI09929172",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      alignment: Alignment.center,
                      height: 23,
                      decoration: BoxDecoration(
                        color: Colors.grey[300],
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.zero,
                          topRight: Radius.zero,
                          bottomLeft: Radius.zero,
                          bottomRight: Radius.zero,
                        ),
                      ),
                      child: const Padding(
                        padding: EdgeInsets.only(left: 10, right: 10),
                        child: Text(
                          "5",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Column(
                    children: [
                      githubDescriptionstxt(
                        ' •  ',
                        '🔭 I’m currently working on',
                        ' Bitcoin Ticker App',
                        true,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      githubDescriptionstxt(
                        ' •  ',
                        '🌱 I’m currently learning',
                        ' App Development',
                        true,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      githubDescriptionstxt(
                        ' •  ',
                        '👯 I’m looking to collaborate on',
                        ' Chatbot Development',
                        true,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      githubDescriptionstxt(
                        ' •  ',
                        '🤝 I’m looking for help with',
                        ' Open Source Projects',
                        true,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      githubDescriptionstxt(
                        ' •  ',
                        '👨‍💻 All of my projects are available at',
                        ' https://github.com/KabirSinghcodes',
                        false,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      githubDescriptionstxt(
                        ' •  ',
                        '📝 I regularly write articles on',
                        ' https://kabirsingh0405.medium.com/',
                        false,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      githubDescriptionstxt(
                        ' •  ',
                        '💬 Ask me about',
                        ' C++ , flutter , Html , Css    ',
                        true,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      githubDescriptionstxt(
                        ' •  ',
                        '📫 How to reach me',
                        ' kabirsingh0405@gmail.com',
                        false,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      githubDescriptionstxt(
                        ' •  ',
                        '⚡ Fun fact',
                        ' I am a whole time foodie 🍕🍔🍟🌭🥓',
                        true,
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Padding(
                  padding: EdgeInsets.only(right: 210),
                  child: Text(
                    "Blogs posts",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Padding(
                  padding: EdgeInsets.only(right: 160),
                  child: Text(
                    "Connect with me:",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                    ),
                  ),
                ),
                Image.asset(
                  "images/social_media.png",
                  color: Colors.white,
                ),
                const SizedBox(
                  height: 20,
                ),
                const Padding(
                  padding: EdgeInsets.only(right: 110),
                  child: Text(
                    "Languages and Tools:",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                    ),
                  ),
                ),
                Image.asset(
                  "images/language_img.png",
                  height: 210,
                ),
                const SizedBox(
                  height: 20,
                ),
                const Padding(
                  padding: EdgeInsets.only(right: 250),
                  child: Text(
                    "Support:",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 120),
                  child: Image.asset(
                    "images/coffee_img.png",
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                langStatsRatingImg("images/Most_used_lan.png"),
                const SizedBox(
                  height: 20,
                ),
                langStatsRatingImg("images/kabir_stats.png"),
                const SizedBox(
                  height: 20,
                ),
                langStatsRatingImg(
                  "images/contribution_img.png",
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  children: const [
                    Icon(
                      Icons.star_border_outlined,
                      color: Colors.white,
                      size: 50,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      "Popular",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      projectsRepo(
                        context,
                        "kickStart-CPP",
                        "37",
                        Colors.pink,
                        "C++",
                        130,
                      ),
                      const SizedBox(width: 10),
                      projectsRepo(
                        context,
                        "Java-Fundamentals-Uncode",
                        "15",
                        Colors.brown,
                        "Java",
                        0,
                      ),
                      const SizedBox(width: 10),
                      projectsRepo(
                        context,
                        "The-Ultimate-SDE-Series",
                        "8",
                        Colors.pink,
                        "C++",
                        20,
                      ),
                      const SizedBox(width: 10),
                      projectsRepo(
                        context,
                        "covid19_tracker",
                        "2",
                        Colors.greenAccent,
                        "Dart",
                        110,
                      ),
                      const SizedBox(width: 10),
                      projectsRepo(
                        context,
                        "Github-Profile-App",
                        "4",
                        Colors.greenAccent,
                        "Dart",
                        80,
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                repoWidgets(
                  const Icon(
                    Icons.class__outlined,
                    color: Colors.white,
                  ),
                  Colors.black,
                  "Repositories",
                  "75",
                  130,
                ),
                repoWidgets(
                  const Icon(
                    Icons.domain_outlined,
                    color: Colors.white,
                  ),
                  Colors.orange,
                  "Organizations",
                  "0",
                  120,
                ),
                repoWidgets(
                  const Icon(
                    Icons.star_outline_outlined,
                    color: Colors.white,
                  ),
                  Colors.yellow,
                  "Starred",
                  "31",
                  170,
                ),
                const SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

Container repoWidgets(
  Icon widgetIcon,
  Color iconBg,
  String repoName,
  String repoCount,
  double _width,
) {
  return Container(
    width: double.infinity,
    decoration: const BoxDecoration(
      color: Colors.white,
      border: Border.symmetric(
        horizontal: BorderSide(color: Colors.white),
      ),
    ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        const SizedBox(height: 15),
        Row(
          children: [
            const SizedBox(width: 10),
            Container(
              width: 45,
              height: 45,
              decoration: BoxDecoration(
                color: iconBg,
                borderRadius: const BorderRadius.all(
                  Radius.circular(10),
                ),
              ),
              child: widgetIcon,
            ),
            const SizedBox(width: 20),
            Text(
              repoName,
              style: const TextStyle(
                color: Colors.black,
                fontSize: 20,
              ),
            ),
            SizedBox(width: _width),
            Text(
              repoCount,
              style: const TextStyle(
                color: Colors.black,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        const SizedBox(height: 10),
      ],
    ),
  );
}

Container projectsRepo(
  BuildContext context,
  String topics,
  String starCount,
  Color lanColor,
  String language,
  double paddingVal,
) {
  return Container(
    width: 300,
    decoration: BoxDecoration(
      color: Colors.white,
      border: Border.all(
        color: Colors.grey,
      ),
      borderRadius: const BorderRadius.all(
        Radius.circular(10),
      ),
    ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Row(
          children: const [
            Padding(
              padding: EdgeInsets.only(left: 10, top: 10),
              child: SizedBox(
                height: 50,
                width: 50,
                child: CircleAvatar(
                  radius: 40,
                  backgroundImage: NetworkImage(
                      'https://avatars.githubusercontent.com/u/69685373?v=4'),
                ),
              ),
            ),
            SizedBox(
              width: 10,
            ),
            Padding(
              padding: EdgeInsets.only(top: 10),
              child: Text(
                "kabirsinghcodes",
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 20,
                ),
              ),
            )
          ],
        ),
        Padding(
          padding: EdgeInsets.only(right: paddingVal),
          child: Text(
            topics,
            style: const TextStyle(
              color: Colors.black,
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        const SizedBox(
          height: 60,
        ),
        Row(
          children: [
            SizedBox(width: 10),
            Icon(
              Icons.star_outlined,
              color: Colors.yellow,
            ),
            SizedBox(width: 10),
            Text(
              starCount,
              style: TextStyle(
                color: Colors.grey,
                fontSize: 20,
              ),
            ),
            SizedBox(width: 10),
            Icon(
              Icons.fiber_manual_record,
              color: lanColor,
            ),
            SizedBox(width: 10),
            Text(
              language,
              style: TextStyle(
                color: Colors.grey,
                fontSize: 20,
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 10,
        ),
      ],
    ),
  );
}

Container langStatsRatingImg(String url) {
  return Container(
    decoration: BoxDecoration(
      color: Colors.white,
      border: Border.all(
        color: Colors.grey,
        width: 2.0,
      ),
      borderRadius: const BorderRadius.all(
        Radius.circular(10),
      ),
    ),
    child: Image.asset(
      url,
    ),
  );
}

RichText githubDescriptionstxt(
    String t1, String t2, String t3, bool colorBlue) {
  return RichText(
    text: TextSpan(
      text: t1,
      style: const TextStyle(color: Colors.white, fontSize: 18),
      children: <TextSpan>[
        TextSpan(
          text: t2,
          style: const TextStyle(color: Colors.white, fontSize: 18),
        ),
        TextSpan(
          text: t3,
          style: colorBlue
              ? const TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold)
              : const TextStyle(
                  color: Colors.blue,
                  fontSize: 18,
                  fontWeight: FontWeight.bold),
        ),
      ],
    ),
  );
}
