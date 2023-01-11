import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'src/sources.dart';
import '../sources.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Column(
    children: [
      SizedBox(
          height: MediaQuery.of(context).size.height * 0.02
      ),        // 2% Empty screen height
      Padding(
        padding: EdgeInsets.symmetric(vertical: MediaQuery.of(context).size.height * 0.03),
        child: SvgPicture.asset(
          sources.icon_main,
          height: MediaQuery.of(context).size.height * 0.04,
          color: Colors.yellow,
        ),
      ),         // Cherp logo
      const Expanded(
          child: Tweets()
      ),  // Tweets
    ],
  );
}