import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'src/sources.dart';
import '../sources.dart';

class MakeCherp extends StatelessWidget {
  const MakeCherp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => DarkOne(
    child: Padding(
      padding: EdgeInsets.all(MediaQuery.of(context).size.height * 0.03),
      child: Column(
        children: [
          Container(
            alignment: Alignment.centerRight,
            child: OutlinedButton(
              onPressed: () {},
              style: OutlinedButton.styleFrom(
                backgroundColor: Colors.yellow.withOpacity(0.05),
                foregroundColor: Colors.yellow,
                side: const BorderSide(
                  color: Colors.yellow,
                  width: 2,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Padding(
                    padding: EdgeInsets.all(MediaQuery.of(context).size.width * 0.02),
                    child: Text(
                      "Cherp",
                      style: sources.font_style(
                        color: Colors.yellow,
                        fontSize: MediaQuery.of(context).size.width * 0.045,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(MediaQuery.of(context).size.width * 0.02),
                    child: SvgPicture.asset(
                      sources.icon_main,
                      height: MediaQuery.of(context).size.height * 0.025,
                      color: Colors.yellow,
                    ),
                  ),
                ],
              ),
            ),
          ),      // Cherp button
          Expanded(
            child: Container(
              margin: EdgeInsets.symmetric(
                vertical: MediaQuery.of(context).size.height * 0.04,
              ),
              alignment: Alignment.topLeft,
              child: TextField(
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.symmetric(
                    vertical: MediaQuery.of(context).size.height * 0.01,
                    horizontal: MediaQuery.of(context).size.width * 0.04,
                  ),
                  icon: const MyAvatar(aspect: 0.1),
                  hintText: "What's Happening?",
                  hintStyle: sources.font_style(
                    color: Colors.white.withOpacity(0.5),
                  ),
                  border: InputBorder.none,
                ),
                style: sources.font_style(
                  color: Colors.white,
                  fontSize: MediaQuery.of(context).size.width * 0.045,
                ),
              ),
            ),
          ),
        ],
      ),
    ),
  );
}
