// ignore_for_file: unused_import, prefer_const_constructors, sized_box_for_whitespace, unused_local_variable, non_constant_identifier_names, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'main_controller.dart';
import '../../sources.dart';

class SplashScreen01 extends StatefulWidget {
  const SplashScreen01({super.key});

  @override
  State<SplashScreen01> createState() => _SplashScreen01State();
}

class _SplashScreen01State extends State<SplashScreen01> {
  @override
  Widget build(BuildContext context) {
    final screen_height = MediaQuery.of(context).size.height;
    final screen_width = MediaQuery.of(context).size.width;

    return Stack(
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
              fit: BoxFit.cover,
            ),
            SizedBox(
              height: screen_height * 0.03,
            ),
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
              height: screen_height * 0.01,
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
              height: screen_height * 0.01,
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
              height: screen_height * 0.005,
            ),
            Text(
              "specific experience they had together",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.grey,
                letterSpacing: 0.5,
                wordSpacing: 2,
              ),
            ),
            SizedBox(
              height: screen_height * 0.05,
            ),
            TheButton(
              text: "Next",
              aspect: 0.12,
              onPressed: () => SplashScreens.my_controller.nextPage(),
              //onPressed: () => Navigator.pushNamed(context, route.splash(2)),
            ),
          ],
        ),
      ],
    );
  }
}
