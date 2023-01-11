// ignore_for_file: unused_import, prefer_const_constructors, sized_box_for_whitespace, unused_local_variable, non_constant_identifier_names, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../Page/04_notification.dart';
import '../../sources.dart';

class SplashScreen03 extends StatefulWidget {
  const SplashScreen03({super.key});

  @override
  State<SplashScreen03> createState() => _SplashScreen03State();
}

class _SplashScreen03State extends State<SplashScreen03> {
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
                height: screen_height * 0.01,
              ),
              Container(
                alignment: Alignment.center,
                width: screen_width,
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
                height: screen_height * 0.01,
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
                height: screen_height * 0.005,
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
              SizedBox(
                height: screen_height * 0.05,
              ),
              TheButton(
                text: "Next",
                aspect: 0.12,
                onPressed: () => Navigator.pushNamed(context, route.splash(4)),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
