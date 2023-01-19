import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

import '../../sources.dart';
import 'screen1.dart';
import 'screen2.dart';
import 'screen3.dart';
import 'screen4.dart';

class SplashScreens extends StatefulWidget {
  const SplashScreens({Key? key}) : super(key: key);

  static final my_controller = CarouselController();

  @override
  State<SplashScreens> createState() => _SplashScreensState();
}

class _SplashScreensState extends State<SplashScreens> {
  @override
  Widget build(BuildContext context) {
    final my_spacing = SizedBox(
      height: MediaQuery
          .of(context)
          .size
          .height * 0.02,
    );

    return Scaffold(
        body: DarkOne(
            child: CarouselSlider(
              carouselController: SplashScreens.my_controller,
              options: CarouselOptions(
                enableInfiniteScroll: false,
                height: MediaQuery
                    .of(context)
                    .size
                    .height,
              ),
              items: [
                SplashScreen01(),
                SplashScreen02(),
                SplashScreen03(),
                SplashScreen04(),
              ],
            )
        )
    );
  }
}
