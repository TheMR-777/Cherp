import 'package:flutter/material.dart';
import 'Page/settings.dart';
import 'Page/home.dart';
import 'sources.dart';

void main() => runApp(MaterialApp(
  title: "Twittery",
  initialRoute: screen.settings,
  routes: {
    screen.main: (context) => const MyMainPage(),
    screen.settings: (context) => const MySettings(),
  },
));