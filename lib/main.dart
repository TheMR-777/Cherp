import 'package:cherp/Initial/SplashScreen/main_controller.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_svg/svg.dart';
import 'sources.dart';
import 'Page/01_home.dart';
import 'Page/02_search.dart';
import 'Page/03_tweetify.dart';
import 'Page/04_notification.dart';
import 'Page/05_profile.dart';
import 'Page/98_settings.dart';
import 'Page/99_eggs.dart';
import 'Page/97_select_contact.dart';
import 'Initial/sign_in.dart';
import 'Initial/verification.dart';
import 'Initial/SplashScreen/screen1_extra.dart';
import 'Initial/SplashScreen/screen1.dart';
import 'Initial/SplashScreen/screen2.dart';
import 'Initial/SplashScreen/screen3.dart';
import 'Initial/SplashScreen/screen4.dart';

void main() => runApp(MaterialApp(
  debugShowCheckedModeBanner: false,
  color: Colors.black,
  title: "Cherp",
  home: const SplashScreen(),
  routes: {
    route.signIn: (context) => const Sign_in(),
    route.verify: (context) => const OTP_verification(),
    route.myHome: (context) => const TheMain(),

    route.contact: (context) => const contact(),
    route.setting: (context) => const MySettings(),
    route.theEggs: (context) => const BuyEggs(),
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
  static bool profile = false;

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

    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
            sources.is_dark
                ? profile ? sources.background_profile_dark : sources.background_dark
                : profile ? sources.background_profile_light : sources.background_light,
          ),
          fit: BoxFit.cover,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
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
            //ViaEditButton(),
            //BuyEggs(),
          ],
        ),
      ),
    );
  }
}