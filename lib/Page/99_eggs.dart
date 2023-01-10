import 'package:flutter/material.dart';
import '../main.dart';
import '../sources.dart';

class BuyEggs extends StatefulWidget {
  const BuyEggs({Key? key}) : super(key: key);

  static var selected_tile = 0;

  @override
  State<BuyEggs> createState() => _BuyEggsState();
}

class _BuyEggsState extends State<BuyEggs> {
  VoidCallback makeSelected(int newIndex) =>
          () => setState(() =>
          BuyEggs.selected_tile = newIndex);

  @override
  Widget build(BuildContext context) => DarkOne(
    profile: true,
    child: Padding(
      padding: EdgeInsets.only(
        top: MediaQuery.of(context).size.height * 0.05,
        left: MediaQuery.of(context).size.width * 0.05,
        right: MediaQuery.of(context).size.width * 0.05,
      ),
      child: ListView(
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
            height: MediaQuery.of(context).size.height * 0.3,
          ),  // Exp: Floating Eggs
          ...List.generate(
            4, (index) => EggTile(
              count: index * 5 + 5,
              price: index + 4.99,
              is_selected: BuyEggs.selected_tile == index,
              onTap: makeSelected(index),
            ),
          ), // Egg Tiles
          Container(
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: Colors.yellow,
              borderRadius: BorderRadius.circular(15),
            ),
            padding: EdgeInsets.symmetric(
              horizontal: MediaQuery.of(context).size.width * 0.05,
              vertical: MediaQuery.of(context).size.height * 0.02,
            ),
            margin: EdgeInsets.symmetric(
              vertical: MediaQuery.of(context).size.height * 0.02,
              horizontal: MediaQuery.of(context).size.width * 0.07,
            ),
            child: Text(
              "Buy Eggs",
              style: sources.font_style(
                color: Colors.black,
                fontSize: MediaQuery.of(context).size.width * 0.05,
              ),
            ),
          ),    // Buy Eggs
        ],
      ),
    ),
  );
}

class EggTile extends StatelessWidget {
  const EggTile({
    required this.count,
    required this.price,
    required this.onTap,
    this.is_selected = false,
    super.key
  });

  final bool is_selected;
  final int count;
  final double price;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) => Container(
    margin: EdgeInsets.only(
      top: MediaQuery.of(context).size.height * 0.015,
    ),
    padding: EdgeInsets.symmetric(
      vertical: MediaQuery.of(context).size.height * 0.02,
      horizontal: MediaQuery.of(context).size.width * 0.01,
    ),
    decoration: BoxDecoration(
      color: Colors.black.withOpacity(is_selected ? 0.8 : 0.5),
      borderRadius: BorderRadius.circular(10),
      border: Border.all(
        color: is_selected ? Colors.yellow : Colors.transparent,
        //width: 2,
      ),
    ),
    child: ListTile(
      onTap: onTap,
      leading: Container(
        padding: EdgeInsets.all(MediaQuery.of(context).size.width * 0.015),
        decoration: BoxDecoration(
          color: Colors.white.withOpacity(0.1),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Image.asset(
          "assets/Icon/egg_with_tray.png",
          width: MediaQuery.of(context).size.width * 0.1,
          height: MediaQuery.of(context).size.height * 0.1,
        ),
      ),     // Egg
      title: Text(
        "$count Eggs",
        style: sources.font_style(
          fontSize: MediaQuery.of(context).size.width * 0.05,
          color: is_selected ? Colors.yellow : Colors.white.withOpacity(0.8),
        ),
      ),            // Count
      trailing: Text(
        "$price USD",
        style: sources.font_style(
          fontSize: MediaQuery.of(context).size.width * 0.05,
          color: is_selected ? Colors.yellow : Colors.white.withOpacity(0.8),
        ),
      ),         // Price
    ),
  );
}
