import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_svg/svg.dart';
import 'package:wp_02_twittery/sources.dart';
import 'Page/01_home.dart';
import 'Page/02_search.dart';
import 'Page/03_tweetify.dart';
import 'Page/04_notification.dart';
import 'Page/05_profile.dart';
import 'Page/99_settings.dart';
import 'Initial/sign_in.dart';
import 'Initial/verification.dart';

void main() => runApp(MaterialApp(
  debugShowCheckedModeBanner: false,
  themeMode: ThemeMode.system,
  color: Colors.yellow,
  title: "Twittery",
  initialRoute: route.signIn,
  routes: {
    route.signIn: (context) => const Sign_in(),
    route.verify: (context) => const OTP_verification(),
    route.myHome: (context) => const TheMain(),
  },
));

class TheMain extends StatefulWidget {
  const TheMain({Key? key}) : super(key: key);

  static final my_controller = CarouselController();
  static const icon_names = [
    "globe",
    "search",
    "tweet",
    "ring",
    "account",
  ];

  @override
  State<TheMain> createState() => _TheMainState();
}

class _TheMainState extends State<TheMain> {
  int selected = 0;

  @override
  Widget build(BuildContext context) {
    Widget bottomLogo(String name, int index) => Expanded(
      child: IconButton(
        onPressed: () => TheMain.my_controller.animateToPage(index),
        icon: SvgPicture.asset(
          "assets/Icon/$name.svg",
          color: index == 2 ? null : index == selected ?
              (sources.is_dark ? Colors.yellow : sources.color_dark) :
              sources.color_TheOther.withOpacity(0.5),
          //height: MediaQuery.of(context).size.height * 0.03,
        ),
      ),
    );

    return Scaffold(
      bottomNavigationBar: Container(
        color: sources.color_selected,
        height: MediaQuery.of(context).size.height * 0.075,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: List.generate(TheMain.icon_names.length, (index) => bottomLogo(TheMain.icon_names[index], index)),
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
          MySearch(),
          MakeCherp(),
          MyNotification(),
          MyHomeInfo(),
          ViaEditButton(),
        ],
      ),
    );
  }
}