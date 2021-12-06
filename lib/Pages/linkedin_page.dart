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
          CachedNetworkImage(
            height: 100,
            width: double.infinity,
            imageUrl:
                "https://media-exp1.licdn.com/dms/image/C5616AQEXXBKeV5EqlQ/profile-displaybackgroundimage-shrink_200_800/0/1629385917358?e=1644451200&v=beta&t=5FYiDWmmYb3aWqkuV26cnenlqvHQVbplkLdvmDYWIgY",
            placeholder: (context, url) => const CircularProgressIndicator(),
            errorWidget: (context, url, error) => const Icon(Icons.error),
          ),
          CachedNetworkImage(
            imageUrl:
                "https://media-exp1.licdn.com/dms/image/C4D03AQHMlGS0d1r8OQ/profile-displayphoto-shrink_200_200/0/1602183435466?e=1644451200&v=beta&t=f6q_AXL_qjhEt0eCtfwaH7B7Ya5VzUre9dEFBNgq7sY",
            placeholder: (context, url) => const CircularProgressIndicator(),
            errorWidget: (context, url, error) => const Icon(Icons.error),
            imageBuilder: (context, imageProvider) => Container(
              width: 200.0,
              height: 200.0,
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.black,
                  width: 2.0,
                ),
                shape: BoxShape.circle,
                image: DecorationImage(image: imageProvider, fit: BoxFit.cover),
              ),
            ),
          ),
          const Text(
            "Kabir Singh",
            style: TextStyle(
              color: Colors.white,
              fontSize: 35,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            "Educator @Unacademy | \nAssociate Mentor @GeeksForGeeks | \nTechnical Blog Writer @InterviewBit / @Scaler",
            style: TextStyle(
              color: Colors.grey[350],
              fontSize: 15,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          const Text(
            "Talks about #coding, #programmer, #appdeveloper, and #softwaredeveloper",
            style: TextStyle(
              color: Colors.grey,
              fontSize: 15,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          const Text(
            "Pune, Maharashtra, India",
            style: TextStyle(
              color: Colors.grey,
              fontSize: 15,
              fontWeight: FontWeight.bold,
            ),
          ),
          const Text(
            "Contact info",
            style: TextStyle(
              color: Colors.blue,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          const Text(
            "4,431 followers • 500+ connections",
            style: TextStyle(
              color: Colors.blue,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                width: 100,
                decoration: const BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.all(
                    Radius.circular(45),
                  ),
                ),
                child: TextButton(
                  onPressed: () {},
                  child: const Text(
                    "Open to",
                    style: TextStyle(color: Colors.black),
                  ),
                ),
              ),
              Container(
                width: 100,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.white,
                    width: 2.0,
                  ),
                  borderRadius: const BorderRadius.all(
                    Radius.circular(45),
                  ),
                ),
                child: TextButton(
                  onPressed: () {},
                  child: const Text(
                    "Add section",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              Container(
                width: 100,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.white,
                    width: 2.0,
                  ),
                  borderRadius: const BorderRadius.all(
                    Radius.circular(45),
                  ),
                ),
                child: TextButton(
                  onPressed: () {},
                  child: const Text(
                    "More",
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
