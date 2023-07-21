import 'package:flutter/material.dart';

import 'mother_screen.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  int currentIndex = 0;
  List<Map<String, String>> _data = [
    {
      "img": "assets/images/1.jpg",
      "title": "This is a title",
      "sub": "This is a Sub Title",
      "des":
          "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book."
    },
    {
      "img": "assets/images/2.jpg",
      "title": "This is a title",
      "sub": "This is a Sub Title",
      "des":
          "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book."
    },
    {
      "img": "assets/images/3.jpg",
      "title": "This is a title",
      "sub": "This is a Sub Title",
      "des":
          "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book."
    }
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView.builder(
            itemCount: _data.length,
            onPageChanged: (value) {
              setState(() {
                currentIndex = value;
              });
            },
            itemBuilder: (_, index) {
              return Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(
                      _data[index]["img"]!,
                    ),
                  ),
                ),
                child: PromoData(promo: _data[index]),
              );
            },
          ),
          Container(
            width: double.maxFinite,
            height: double.maxFinite,
            margin: EdgeInsets.only(bottom: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: List.generate(_data.length, (listIndex) {
                return Container(
                  margin: EdgeInsets.all(3),
                  width: listIndex == currentIndex ? 22 : 6,
                  height: 6,
                  decoration: BoxDecoration(
                    color: listIndex == currentIndex
                        ? Colors.black
                        : Colors.black38,
                    borderRadius: BorderRadius.circular(50),
                  ),
                );
              }),
            ),
          ),
          Positioned(
            top: 60,
            right: 20,
            child: TextButton(
              style: ButtonStyle(
                textStyle: MaterialStateProperty.all(
                  TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.w300,
                  ),
                ),
                foregroundColor: MaterialStateProperty.all(Colors.black),
              ),
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) {
                    return MotherScreen();
                  }),
                );
              },
              child: Text(
                "Skip",
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class PromoData extends StatelessWidget {
  final Map<String, String> promo;

  const PromoData({super.key, required this.promo});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        top: 200,
        left: 20,
        right: 20,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            promo['title']!,
            style: TextStyle(
              height: 1,
              fontSize: 28,
              fontWeight: FontWeight.w600,
            ),
          ),
          Text(
            promo['sub']!,
            style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.w300,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            promo['des']!,
            style: TextStyle(
              fontSize: 17,
              fontWeight: FontWeight.w400,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          ElevatedButton(
            style: ButtonStyle(
              elevation: MaterialStateProperty.all(0),
              backgroundColor: MaterialStateProperty.all(Colors.black12),
              foregroundColor: MaterialStateProperty.all(
                Colors.black,
              ),
              shape: MaterialStateProperty.all(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(3),
                ),
              ),
            ),
            onPressed: () {},
            child: Text("Enroll Now"),
          )
        ],
      ),
    );
  }
}
