import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../main.dart';
import 'src/sources.dart';
import '../sources.dart';

class BuyEggs extends StatefulWidget {
  const BuyEggs({Key? key}) : super(key: key);

  @override
  State<BuyEggs> createState() => _BuyEggsState();
}

class _BuyEggsState extends State<BuyEggs> {
  @override
  Widget build(BuildContext context) => DarkOne(
    profile: true,
    child: Padding(
      padding: EdgeInsets.symmetric(
        vertical: MediaQuery.of(context).size.height * 0.05,
        horizontal: MediaQuery.of(context).size.width * 0.05,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GestureDetector(
                onTap: () => TheMain.my_controller.jumpToPage(4),
                child: Icon(
                  Icons.arrow_back,
                  color: Colors.white.withOpacity(0.8),
                ),
              ),  // Back
              Container(
                padding: EdgeInsets.symmetric(
                  vertical: MediaQuery.of(context).size.height * 0.001,
                  horizontal: MediaQuery.of(context).size.width * 0.03,
                ),
                decoration: BoxDecoration(
                  gradient: const LinearGradient(
                    colors: [
                      Color(0xFFD355FF),
                      Color(0xFFA790FF),
                    ],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  children: [
                    Image.asset(
                      "assets/Icon/egg.png",
                      width: MediaQuery.of(context).size.width * 0.042,
                      height: MediaQuery.of(context).size.height * 0.042,
                    ),     // Egg
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.02,
                    ),        // Spacing
                    Text(
                      "1,234",
                      style: sources.font_style(
                        //fontSize: 15,
                        //fontSize: MediaQuery.of(context).size.height * 0.015,
                        fontSize: MediaQuery.of(context).size.width * 0.035,
                        color: sources.color_TheOther,
                      ),
                    ),            // Text
                  ],
                ),
              ),        // Egg
            ],
          ),          // Top Row (AppBar)
          Image.asset(
            "assets/Icon/eggs_intro.png",
            width: MediaQuery.of(context).size.width * 0.8,
            height: MediaQuery.of(context).size.height * 0.33,
          ),  // Exp: Floating Eggs
        ],
      ),
    ),
  );
}
