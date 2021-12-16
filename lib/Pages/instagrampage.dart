import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

class instapage extends StatelessWidget {
  const instapage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        AppBar(
          title: const Text(
            "Instagram",
            style: TextStyle(
                fontSize: 25, fontWeight: FontWeight.bold, color: Colors.white),
          ),
          backgroundColor: Colors.purple,
          centerTitle: true,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: CachedNetworkImage(
                imageUrl:
                    "https://avatars.githubusercontent.com/u/69685373?v=4",
                placeholder: (context, url) =>
                    const CircularProgressIndicator(),
                errorWidget: (context, url, error) => const Icon(Icons.error),
                imageBuilder: (context, imageProvider) => Container(
                  width: 120.0,
                  height: 120.0,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.black,
                      width: 2.0,
                    ),
                    shape: BoxShape.circle,
                    image: DecorationImage(
                        image: imageProvider, fit: BoxFit.cover),
                  ),
                ),
              ),
            ),
            const Text(
              "kabirsinghcodes",
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
              ),
            ),
            const Icon(
              Icons.more_horiz_outlined,
              color: Colors.white,
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              margin: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.grey[900],
                borderRadius: const BorderRadius.all(
                  Radius.circular(10),
                ),
                border: Border.all(
                  color: Colors.white,
                ),
              ),
              child: TextButton(
                onPressed: () {},
                child: const Text(
                  "Message",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
              ),
            ),
            Container(
              width: 80,
              margin: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.grey[900],
                borderRadius: const BorderRadius.all(
                  Radius.circular(10),
                ),
                border: Border.all(
                  color: Colors.white,
                ),
              ),
              child: IconButton(
                onPressed: () {},
                icon: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: const [
                    Icon(
                      Icons.person,
                      color: Colors.white,
                    ),
                    Icon(
                      Icons.check_outlined,
                      color: Colors.white,
                    ),
                  ],
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.grey[900],
                borderRadius: const BorderRadius.all(
                  Radius.circular(10),
                ),
                border: Border.all(
                  color: Colors.white,
                ),
              ),
              child: const Icon(
                Icons.expand_more_outlined,
                color: Colors.white,
                size: 50,
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 20,
        ),
        const Padding(
          padding: EdgeInsets.only(left: 15),
          child: Text(
            "Kabir Singh",
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
        ),
        aboutText('Founder', ' @jigsawmindz'),
        aboutText('Mentor', ' @geeks_for_geeks'),
        aboutText('Tech blog writer', ' @InterviewBit'),
        aboutText('Educator', ' @unacademy'),
        const Padding(
          padding: EdgeInsets.only(left: 15),
          child: Text(
            "Damn.🛸🎮",
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(left: 15),
          child: Text(
            "www.youtube.com/c/KabirSinghCodes",
            style: TextStyle(color: Colors.blue, fontSize: 20),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            followersText("5", "posts"),
            followersText("201", "followers"),
            followersText("199", "following"),
          ],
        ),
        const SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            feedIcons(
              const Icon(
                Icons.grid_on_outlined,
                color: Colors.blue,
                size: 35,
              ),
            ),
            feedIcons(
              const Icon(
                Icons.format_list_bulleted_outlined,
                color: Colors.white,
                size: 35,
              ),
            ),
            feedIcons(
              const Icon(
                Icons.perm_contact_calendar_outlined,
                color: Colors.white,
                size: 35,
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            instagramImg(
                "https://avatars.githubusercontent.com/u/69685373?v=4"),
            instagramImg(
                "https://avatars.githubusercontent.com/u/69685373?v=4"),
          ],
        ),
        const SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            instagramImg(
                "https://avatars.githubusercontent.com/u/69685373?v=4"),
            instagramImg(
                "https://avatars.githubusercontent.com/u/69685373?v=4"),
          ],
        ),
      ],
    );
  }

  SizedBox instagramImg(String url) {
    return SizedBox(
      height: 150,
      width: 150,
      child: CachedNetworkImage(
        imageUrl: url,
        placeholder: (context, url) => const CircularProgressIndicator(),
        errorWidget: (context, url, error) => const Icon(Icons.error),
      ),
    );
  }

  IconButton feedIcons(Icon icondata) {
    return IconButton(onPressed: () {}, icon: icondata);
  }

  Column followersText(String txt1, String txt2) {
    return Column(
      children: [
        Text(
          txt1,
          style: const TextStyle(color: Colors.white, fontSize: 20),
        ),
        Text(
          txt2,
          style: const TextStyle(color: Colors.grey, fontSize: 20),
        ),
      ],
    );
  }
}

Widget aboutText(String txt1, String txt2) {
  return Padding(
    padding: const EdgeInsets.only(left: 15),
    child: RichText(
      text: TextSpan(
        text: txt1,
        style: const TextStyle(color: Colors.white, fontSize: 20),
        children: <TextSpan>[
          TextSpan(
            text: txt2,
            style: const TextStyle(color: Colors.blue, fontSize: 20),
          ),
        ],
      ),
    ),
  );
}
