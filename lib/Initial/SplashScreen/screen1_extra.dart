// ignore_for_file: unused_import, prefer_const_constructors, sized_box_for_whitespace, unused_local_variable, non_constant_identifier_names, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers

import 'package:cherp/Initial/SplashScreen/main_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:carousel_slider/carousel_slider.dart';
import '../../Page/04_notification.dart';
import '../../sources.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    final screen_height = MediaQuery.of(context).size.height;
    final screen_width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Stack(
        // clipBehavior: Clip.none,
        children: [
          Container(
            height: screen_height,
            width: screen_width,
            child: Image.asset(
              'assets/background_dark.png',
              fit: BoxFit.cover,
            ),
          ),
          ListView(
            children: [
              SizedBox(
                height: screen_height * 0.05,
              ),
              Image.asset(
                'assets/splash_screen.png',
                fit: BoxFit.fitWidth,
              ),
              SizedBox(
                height: screen_height * 0.03,
              ),
              CarouselSlider(
                options: CarouselOptions(
                  //height: screen_height * 0.5,
                  autoPlay: true,
                  autoPlayInterval: Duration(seconds: 3),
                  autoPlayAnimationDuration: Duration(milliseconds: 800),
                  autoPlayCurve: Curves.fastOutSlowIn,
                  enlargeCenterPage: true,
                  scrollDirection: Axis.horizontal,
                ),
                items: [
                  text_01(),
                  text_02(),
                  text_03(),
                  text_04(),
                ],
              ),
              TheButton(
                text: "Next",
                aspect: 0.12,
                //onPressed: () => SplashScreens.my_controller.nextPage(),
                onPressed: () => Navigator.pushNamed(context, route.signIn),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

Widget text_01() => Column(
  children: [
    Text(
      "Let's Get Started",
      textAlign: TextAlign.center,
      style: sources.font_style(
          fontWeight: FontWeight.bold,
          letterSpacing: 1,
          fontSize: 30,
          color: Colors.white
      ),
    ),
    SizedBox(
      height: 10,
    ),
    Text.rich(
      textAlign: TextAlign.center,
      TextSpan(
          text: "With",
          style: sources.font_style(
              fontWeight: FontWeight.bold,
              letterSpacing: 1,
              fontSize: 30,
              color: Colors.white
          ),
          children: [
            TextSpan(
                text: " Cherpi",
                style: sources.font_style(
                    fontWeight: FontWeight.bold,
                    letterSpacing: 2,
                    fontSize: 30,
                    color: Color.fromARGB(255, 252, 231, 42)
                )
            )
          ]
      ),
    ),
    SizedBox(
      height: 10,
    ),
    Text(
      "Cherp is a post to another user about a",
      textAlign: TextAlign.center,
      style: sources.font_style(
        color: Colors.grey,
        letterSpacing: 0.5,
        wordSpacing: 2,
      ),
    ),
    SizedBox(
      height: 5,
    ),
    Text(
      "specific experience they had together",
      textAlign: TextAlign.center,
      style: TextStyle(
        color: Colors.grey,
        letterSpacing: 0.5,
        wordSpacing: 2,
      ),
    )
  ],
);
Widget text_02() => Column(
      children: [
        Text(
          "Let's Get Started",
          style: TextStyle(
              fontWeight: FontWeight.bold,
              letterSpacing: 2,
              wordSpacing: 3,
              fontSize: 30,
              color: Colors.white),
        ),
        SizedBox(
          height: 10,
        ),
        Text.rich(
          TextSpan(
              text: "With",
              style: TextStyle(
                  letterSpacing: 2,
                  wordSpacing: 3,
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                  color: Colors.white),
              children: [
                TextSpan(
                    text: " Cherpi",
                    style: TextStyle(
                        letterSpacing: 2,
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                        color: Color.fromARGB(255, 252, 231, 42)))
              ]),
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          "A cherp must have at leaste one character",
          style: TextStyle(
            color: Colors.grey,
            letterSpacing: 0.5,
            wordSpacing: 2,
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          "and one specific user to be an eligible cherp",
          style: TextStyle(
            color: Colors.grey,
            letterSpacing: 0.5,
            wordSpacing: 2,
          ),
        ),
      ],
    );
Widget text_03() => Column(
  children: [
    Align(
      alignment: Alignment.center,
      child: Text(
        "Let's Get Started",
        style: TextStyle(
            fontWeight: FontWeight.bold,
            letterSpacing: 2,
            wordSpacing: 3,
            fontSize: 30,
            color: Colors.white),
      ),
    ),
    SizedBox(
      height: 10,
    ),
    Container(
      alignment: Alignment.center,
      width: 300,
      child: Text.rich(
        TextSpan(
            text: "With",
            style: TextStyle(
                letterSpacing: 2,
                wordSpacing: 3,
                fontWeight: FontWeight.bold,
                fontSize: 30,
                color: Colors.white),
            children: [
              TextSpan(
                  text: " Cherpi",
                  style: TextStyle(
                      letterSpacing: 2,
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                      color: Color.fromARGB(255, 252, 231, 42)))
            ]),
      ),
    ),
    SizedBox(
      height: 10,
    ),
    Align(
      alignment: Alignment.center,
      child: Text(
        "Egg is a currency in Cherpi( You can earn",
        style: TextStyle(
          color: Colors.grey,
          letterSpacing: 0.5,
          wordSpacing: 2,
        ),
      ),
    ),
    SizedBox(
      height: 5,
    ),
    Align(
      alignment: Alignment.center,
      child: Text(
        "eggs or buy eggs)",
        style: TextStyle(
          color: Colors.grey,
          letterSpacing: 0.5,
          wordSpacing: 2,
        ),
      ),
    ),
  ],
);
Widget text_04() => Column(
  children: [
    Align(
      alignment: Alignment.center,
      child: Text(
        "Point System",
        style: TextStyle(
            fontWeight: FontWeight.bold,
            letterSpacing: 2,
            wordSpacing: 3,
            fontSize: 20,
            color: Colors.white),
      ),
    ),
    SizedBox(
      height: 15,
    ),
    Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Row(
        children: [
          Icon(
            Icons.circle,
            color: Color.fromARGB(255, 252, 231, 42),
            size: 12,
          ),
          SizedBox(
            width: 10,
          ),
          Text.rich(
            TextSpan(
                text: "Viewing the owner of the Cherps",
                style: TextStyle(
                  color: Colors.white.withOpacity(0.7),
                ),
                children: [
                  TextSpan(
                      text: " 3Eggs",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 252, 231, 42)))
                ]),
          ),
        ],
      ),
    ),
    SizedBox(
      height: 10,
    ),
    Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Row(
        children: [
          Icon(
            Icons.circle,
            color: Color.fromARGB(255, 252, 231, 42),
            size: 12,
          ),
          SizedBox(
            width: 10,
          ),
          Text.rich(
            TextSpan(
                text: "Sent Cherp +10 points and",
                style: TextStyle(
                  color: Colors.white.withOpacity(0.7),
                ),
                children: [
                  TextSpan(
                      text: " +1 Egg",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 252, 231, 42))),
                  TextSpan(
                    text: " Cherp",
                    style: TextStyle(
                      color: Colors.white.withOpacity(0.7),
                    ),
                  )
                ]),
          ),
        ],
      ),
    ),
    SizedBox(
      height: 10,
    ),
    Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Row(
        children: [
          Icon(
            Icons.circle,
            color: Color.fromARGB(255, 252, 231, 42),
            size: 12,
          ),
          SizedBox(
            width: 10,
          ),
          Text.rich(
            TextSpan(
                text: "Receives likes +1 point and",
                style: TextStyle(
                  color: Colors.white.withOpacity(0.7),
                ),
                children: [
                  TextSpan(
                      text: " .01 Egg",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 252, 231, 42))),
                  TextSpan(
                    text: " Cherp",
                    style: TextStyle(
                      color: Colors.white.withOpacity(0.7),
                    ),
                  )
                ]),
          ),
        ],
      ),
    ),
    SizedBox(
      height: 10,
    ),
    Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Row(
        children: [
          Icon(
            Icons.circle,
            color: Color.fromARGB(255, 252, 231, 42),
            size: 12,
          ),
          SizedBox(
            width: 10,
          ),
          Text.rich(
            TextSpan(
                text: "Receives comment +2 point and",
                style: TextStyle(
                  color: Colors.white.withOpacity(0.7),
                ),
                children: [
                  TextSpan(
                      text: " .02Egg",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 252, 231, 42)))
                ]),
          ),
        ],
      ),
    ),
  ],
);