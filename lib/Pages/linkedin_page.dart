import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class LinkedinPage extends StatelessWidget {
  const LinkedinPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          AppBar(
            title: const Text(
              "Linkedin",
              style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
            centerTitle: true,
          ),
          Stack(
            clipBehavior: Clip.none,
            children: [
              CachedNetworkImage(
                height: 105,
                width: double.infinity,
                imageUrl:
                    "https://media-exp1.licdn.com/dms/image/C5616AQEXXBKeV5EqlQ/profile-displaybackgroundimage-shrink_200_800/0/1629385917358?e=1644451200&v=beta&t=5FYiDWmmYb3aWqkuV26cnenlqvHQVbplkLdvmDYWIgY",
                placeholder: (context, url) =>
                    const CircularProgressIndicator(),
                errorWidget: (context, url, error) => const Icon(Icons.error),
              ),
              Positioned(
                top: 45,
                left: 15,
                child: CachedNetworkImage(
                  imageUrl:
                      "https://media-exp1.licdn.com/dms/image/C4D03AQHMlGS0d1r8OQ/profile-displayphoto-shrink_200_200/0/1602183435466?e=1644451200&v=beta&t=f6q_AXL_qjhEt0eCtfwaH7B7Ya5VzUre9dEFBNgq7sY",
                  placeholder: (context, url) =>
                      const CircularProgressIndicator(),
                  errorWidget: (context, url, error) => const Icon(Icons.error),
                  imageBuilder: (context, imageProvider) => Container(
                    width: 150.0,
                    height: 150.0,
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
            ],
          ),
          const SizedBox(
            height: 100,
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 15.0),
                child: const Text(
                  "Kabir Singh",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 35,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 50.0),
                child: const Text(
                  " 	??? 1st",
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 20,
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(right: 90.0),
            child: Text(
              "Educator @Unacademy | Associate Mentor \n@GeeksForGeeks | Technical Blog Writer \n@InterviewBit / @Scaler",
              style: TextStyle(
                color: Colors.grey[350],
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 30.0),
            child: const Text(
              "Talks about #coding, #programmer, #appdeveloper, \n and #softwaredeveloper",
              style: TextStyle(
                color: Colors.grey,
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 120.0),
            child: const Text(
              "Unacademy 	???  Sathyabama University",
              style: TextStyle(
                color: Colors.white,
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 205.0),
            child: const Text(
              "Pune, Maharashtra, India",
              style: TextStyle(
                color: Colors.grey,
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20.0),
                child: const Text(
                  "4,431 followers ???",
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 0.0),
                child: const Text(
                  " 500+ connections",
                  style: TextStyle(
                    color: Colors.blue,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
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
              Container(
                width: 300,
                height: 40,
                decoration: const BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.all(
                    Radius.circular(45),
                  ),
                ),
                child: TextButton(
                  onPressed: () {},
                  child: Text(
                    "Message",
                    style: TextStyle(
                        color: Colors.grey[900],
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                ),
              ),
              Container(
                width: 50,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.grey,
                    width: 2.0,
                  ),
                  borderRadius: const BorderRadius.all(
                    Radius.circular(30),
                  ),
                ),
                child: TextButton(
                  onPressed: () {},
                  child: const Text(
                    "??? ??? ???",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(right: 180),
                child: Text(
                  "Highlights",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CachedNetworkImage(
                    imageUrl:
                        "https://yt3.ggpht.com/ZwyBrpbjGpzqUSLpFDjhrqQe597ug15G4U1fFdAKsIDCXZMZUDAmHy_R8rGGgZu52xQJUPELVg=s176-c-k-c0x00ffffff-no-rj",
                    placeholder: (context, url) =>
                        const CircularProgressIndicator(),
                    errorWidget: (context, url, error) =>
                        const Icon(Icons.error),
                    imageBuilder: (context, imageProvider) => Container(
                      width: 50.0,
                      height: 50.0,
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
                  const Text(
                    "Famous Algorithms Made Easy!",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              const Padding(
                padding: EdgeInsets.only(
                  right: 40,
                  bottom: 20,
                ),
                child: Text(
                  "Kabir spoke at this event",
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 15,
                  ),
                ),
              ),
            ],
          ),
          const Padding(
            padding: EdgeInsets.only(
              right: 220,
            ),
            child: Text(
              "Featured",
              style: TextStyle(
                color: Colors.white,
                fontSize: 25,
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.grey,
                    ),
                    borderRadius: const BorderRadius.all(
                      Radius.circular(20),
                    ),
                  ),
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 200),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: const [
                            Text(
                              "Posted ",
                              style: TextStyle(
                                color: Colors.grey,
                              ),
                            ),
                            Text(
                              ". 1mo",
                              style: TextStyle(
                                color: Colors.grey,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        "finally recieved these beautiful Diwali gifts \nfrom Unacademy!",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                        ),
                      ),
                      CachedNetworkImage(
                        height: 210,
                        width: 300,
                        imageUrl:
                            "https://media-exp1.licdn.com/dms/image/C4D22AQGxQ48jpKay5w/feedshare-shrink_480/0/1636522390033?e=1642032000&v=beta&t=j9l4Egd0y32p0YqT1y7U8dKaBuVEZdDTJZFajtIg3b0",
                        placeholder: (context, url) =>
                            const CircularProgressIndicator(),
                        errorWidget: (context, url, error) =>
                            const Icon(Icons.error),
                      ),
                      Row(
                        children: [
                          const SizedBox(
                            width: 10,
                          ),
                          likeIcons(
                            true,
                            "blue",
                            const Icon(
                              Icons.thumb_up,
                              color: Colors.white,
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          likeIcons(
                            true,
                            "red",
                            const Icon(
                              Icons.favorite,
                              color: Colors.white,
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          likeIcons(
                            false,
                            "red",
                            const Icon(
                              Icons.pan_tool,
                              color: Colors.white,
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          const Text(
                            "101 ??? 2 comments",
                            style: TextStyle(
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.grey,
                    ),
                    borderRadius: const BorderRadius.all(
                      Radius.circular(20),
                    ),
                  ),
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 200),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: const [
                            Text(
                              "Posted ",
                              style: TextStyle(
                                color: Colors.grey,
                              ),
                            ),
                            Text(
                              ". 1mo",
                              style: TextStyle(
                                color: Colors.grey,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        "finally recieved these beautiful Diwali gifts \nfrom Unacademy!",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                        ),
                      ),
                      CachedNetworkImage(
                        height: 210,
                        width: 300,
                        imageUrl:
                            "https://media-exp1.licdn.com/dms/image/C4D22AQGxQ48jpKay5w/feedshare-shrink_480/0/1636522390033?e=1642032000&v=beta&t=j9l4Egd0y32p0YqT1y7U8dKaBuVEZdDTJZFajtIg3b0",
                        placeholder: (context, url) =>
                            const CircularProgressIndicator(),
                        errorWidget: (context, url, error) =>
                            const Icon(Icons.error),
                      ),
                      Row(
                        children: [
                          const SizedBox(
                            width: 10,
                          ),
                          likeIcons(
                            true,
                            "blue",
                            const Icon(
                              Icons.thumb_up,
                              color: Colors.white,
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          likeIcons(
                            true,
                            "red",
                            const Icon(
                              Icons.favorite,
                              color: Colors.white,
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          likeIcons(
                            false,
                            "red",
                            const Icon(
                              Icons.pan_tool,
                              color: Colors.white,
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          const Text(
                            "101 ??? 2 comments",
                            style: TextStyle(
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.grey,
                    ),
                    borderRadius: const BorderRadius.all(
                      Radius.circular(20),
                    ),
                  ),
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 200),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: const [
                            Text(
                              "Posted ",
                              style: TextStyle(
                                color: Colors.grey,
                              ),
                            ),
                            Text(
                              ". 1mo",
                              style: TextStyle(
                                color: Colors.grey,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        "finally recieved these beautiful Diwali gifts \nfrom Unacademy!",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                        ),
                      ),
                      CachedNetworkImage(
                        height: 210,
                        width: 300,
                        imageUrl:
                            "https://media-exp1.licdn.com/dms/image/C4D22AQGxQ48jpKay5w/feedshare-shrink_480/0/1636522390033?e=1642032000&v=beta&t=j9l4Egd0y32p0YqT1y7U8dKaBuVEZdDTJZFajtIg3b0",
                        placeholder: (context, url) =>
                            const CircularProgressIndicator(),
                        errorWidget: (context, url, error) =>
                            const Icon(Icons.error),
                      ),
                      Row(
                        children: [
                          const SizedBox(
                            width: 10,
                          ),
                          likeIcons(
                            true,
                            "blue",
                            const Icon(
                              Icons.thumb_up,
                              color: Colors.white,
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          likeIcons(
                            true,
                            "red",
                            const Icon(
                              Icons.favorite,
                              color: Colors.white,
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          likeIcons(
                            false,
                            "red",
                            const Icon(
                              Icons.pan_tool,
                              color: Colors.white,
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          const Text(
                            "101 ??? 2 comments",
                            style: TextStyle(
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.grey,
                    ),
                    borderRadius: const BorderRadius.all(
                      Radius.circular(20),
                    ),
                  ),
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 200),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: const [
                            Text(
                              "Posted ",
                              style: TextStyle(
                                color: Colors.grey,
                              ),
                            ),
                            Text(
                              ". 1mo",
                              style: TextStyle(
                                color: Colors.grey,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        "finally recieved these beautiful Diwali gifts \nfrom Unacademy!",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                        ),
                      ),
                      CachedNetworkImage(
                        height: 210,
                        width: 300,
                        imageUrl:
                            "https://media-exp1.licdn.com/dms/image/C4D22AQGxQ48jpKay5w/feedshare-shrink_480/0/1636522390033?e=1642032000&v=beta&t=j9l4Egd0y32p0YqT1y7U8dKaBuVEZdDTJZFajtIg3b0",
                        placeholder: (context, url) =>
                            const CircularProgressIndicator(),
                        errorWidget: (context, url, error) =>
                            const Icon(Icons.error),
                      ),
                      Row(
                        children: [
                          const SizedBox(
                            width: 10,
                          ),
                          likeIcons(
                            true,
                            "blue",
                            const Icon(
                              Icons.thumb_up,
                              color: Colors.white,
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          likeIcons(
                            true,
                            "red",
                            const Icon(
                              Icons.favorite,
                              color: Colors.white,
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          likeIcons(
                            false,
                            "red",
                            const Icon(
                              Icons.pan_tool,
                              color: Colors.white,
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          const Text(
                            "101 ??? 2 comments",
                            style: TextStyle(
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

Container likeIcons(bool thirdIcon, String colordata, Icon icondata) {
  return Container(
    height: 30,
    width: 30,
    decoration: thirdIcon
        ? BoxDecoration(
            color: colordata == "blue" ? Colors.blue : Colors.red,
            borderRadius: const BorderRadius.all(
              Radius.circular(30),
            ),
          )
        : const BoxDecoration(
            color: Colors.green,
            borderRadius: BorderRadius.all(
              Radius.circular(30),
            ),
          ),
    child: icondata,
  );
}
