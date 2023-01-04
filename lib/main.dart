import 'package:flutter/material.dart';
import 'Page/home.dart';
import 'Page/settings.dart';
import 'Page/home_info.dart';
import 'sources.dart';

void main() => runApp(MaterialApp(
  title: "Twittery",
  initialRoute: screen.home,
  routes: {
    screen.home: (context) => const MyMainPage(),
    screen.settings: (context) => const MySettings(),
    screen.home_with_info: (context) => const InfoHome(),
  },
));