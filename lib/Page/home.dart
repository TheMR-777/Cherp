import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'src/sources.dart';
import '../sources.dart';

class MyMainPage extends StatelessWidget {
  const MyMainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          elevation: 0,
          toolbarHeight: 60,
          centerTitle: true,
          title: SvgPicture.asset(
            sources.icon_main,
            height: 25,
            color: Colors.yellow,
          ),
        ),
        bottomNavigationBar: const MyNavigation(),
        body: const DarkOne(
          child: Tweets(),
        )
    );
}