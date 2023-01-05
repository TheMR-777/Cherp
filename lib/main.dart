import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_svg/svg.dart';
import 'Page/home.dart';
import 'Page/settings.dart';
import 'Page/home_info.dart';

void main() => runApp(const MaterialApp(
  debugShowCheckedModeBanner: false,
  title: "Twittery",
  home: TheMain(),
));

class TheMain extends StatefulWidget {
  const TheMain({Key? key}) : super(key: key);

  static final my_controller = CarouselController();

  @override
  State<TheMain> createState() => _TheMainState();
}

class _TheMainState extends State<TheMain> {
  int selected = 0;

  @override
  Widget build(BuildContext context) {
    Widget bottomLogo(String name, {int index = 5}) => Expanded(
      child: IconButton(
        onPressed: () => TheMain.my_controller.animateToPage(index),
        icon: SvgPicture.asset(
          "assets/Icon/$name.svg",
          color: index == 5 ? Colors.white.withOpacity(0.1) :     // Remove it later
          index == selected ? Colors.yellow : Colors.white.withOpacity(0.5),
          height: MediaQuery.of(context).size.height * 0.03,
        ),
      ),
    );

    return Scaffold(
      bottomNavigationBar: Container(
        color: Colors.black,
        height: MediaQuery.of(context).size.height * 0.075,
        child: Row(
          children: [
            bottomLogo("globe", index: 0),
            bottomLogo("search"),
            bottomLogo("main_transparent", index: 1),
            bottomLogo("ring"),
            bottomLogo("account", index: 2),
          ],
        ),
      ),
      body: CarouselSlider(
        carouselController: TheMain.my_controller,
        options: CarouselOptions(
          height: MediaQuery.of(context).size.height * 0.925,
          viewportFraction: 1,
          enableInfiniteScroll: false,
          onPageChanged: (index, reason) => setState(() => selected = index),
          scrollPhysics: const NeverScrollableScrollPhysics(),
        ),
        items: const [
          MyHomePage(),
          MyHomeInfo(),
          MySettings(),
        ],
      ),
    );
  }
}