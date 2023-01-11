// ignore_for_file: unused_import, prefer_const_constructors, sized_box_for_whitespace, unused_local_variable, non_constant_identifier_names, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../Page/04_notification.dart';
import '../../sources.dart';

class SplashScreen04 extends StatefulWidget {
  const SplashScreen04({super.key});

  @override
  State<SplashScreen04> createState() => _SplashScreen04State();
}

class _SplashScreen04State extends State<SplashScreen04> {
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
                height: screen_height * 0.025,
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
                height: screen_height * 0.015,
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
                height: screen_height * 0.015,
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
                height: screen_height * 0.015,
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
              SizedBox(
                height: screen_height * 0.05,
              ),
              TheButton(
                text: "Next",
                aspect: 0.12,
                onPressed: () => Navigator.pushNamed(context, route.signIn),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
