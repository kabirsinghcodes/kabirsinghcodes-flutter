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
                  " 	• 1st",
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
              "Unacademy 	•  Sathyabama University",
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
                  "4,431 followers •",
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
                    "• • •",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
