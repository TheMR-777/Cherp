import 'package:flutter/material.dart';
import 'src/sources.dart';
import '../main.dart';
import '../sources.dart';

class MyHomeInfo extends StatefulWidget {
  const MyHomeInfo({Key? key}) : super(key: key);

  @override
  State<MyHomeInfo> createState() => _MyHomeInfoState();
}

class _MyHomeInfoState extends State<MyHomeInfo> {
  int selected = 0;

  @override
  Widget build(BuildContext context) {

    Widget levelText(String text, {Color color = const Color(0xFF424300)}) => Text(
      text,
      style: sources.font_style(
        //fontSize: 15,
        fontSize: MediaQuery.of(context).size.height * 0.02,
        //fontSize: MediaQuery.of(context).size.width * 0.04,
        color: color,
      ),
    );
    Widget cherpsOne(String text, {required int id}) {
      final is_selected = selected == id;
      return Expanded(
          child: GestureDetector(
            onTap: () => setState(() => selected = id),
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(
                    vertical: MediaQuery.of(context).size.height * 0.01,
                  ),
                  child: Text(
                    text,
                    style: sources.font_style(
                      //fontSize: 15,
                      fontSize: MediaQuery.of(context).size.height * 0.02,
                      //fontSize: MediaQuery.of(context).size.width * 0.04,
                      color: Colors.white.withOpacity(is_selected ? 0.8 : 0.4),
                      fontWeight: is_selected ? FontWeight.w500 : FontWeight.normal,
                    ),
                  ),
                ),
                Divider(
                  color: is_selected ? Colors.white : Colors.white.withOpacity(0.5),
                  thickness: 2,
                ),
              ],
            ),
          ),
        );
    }

    return DarkOne(
      child: ListView(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.6,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Flexible(
                  child: SizedBox(
                    height: MediaQuery.of(context).size.height * 0.04,
                  ),
                ),    // 4% of the screen height
                Flexible(
                  flex: 2,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Flexible(
                        child: Container(),
                      ),        // Just for Padding
                      const Flexible(
                          child: MyAvatar(aspect: 0.15)
                      ),  // The Middle Avatar
                      Flexible(
                        child: Container(
                          alignment: Alignment.topRight,
                          padding: EdgeInsets.symmetric(
                            horizontal: MediaQuery.of(context).size.width * 0.05,
                          ),
                          child: OutlinedButton(
                            onPressed: () => TheMain.my_controller.animateToPage(5),
                            style: OutlinedButton.styleFrom(
                              backgroundColor: const Color(0xFFfffcdd),
                              side: BorderSide(
                                color: Colors.lime.shade700,
                                width: 1.5,
                              ),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                            child: Text(
                              "Edit",
                              style: sources.font_style(
                                color: Colors.lime.shade800,
                                fontSize: MediaQuery.of(context).size.height * 0.02,
                              ),
                            ),
                          ),
                        ),
                      )         // The Edit Button
                    ],
                  ),
                ),    // Avatar + Edit Button
                Text(
                  settings_info.name,
                  style: sources.font_style(
                    //fontSize: 20,
                    fontSize: MediaQuery.of(context).size.width * 0.05,
                    color: Colors.white,
                  ),
                ),        // Name
                Text(
                  settings_info.username,
                  style: sources.font_style(
                    //fontSize: 15,
                    fontSize: MediaQuery.of(context).size.width * 0.04,
                    color: Colors.white.withOpacity(0.7),
                  ),
                ),        // Username
                Flexible(
                  child: Container(
                    decoration: BoxDecoration(
                      color: const Color(0xFFfffcdd),
                      border: Border.all(
                        color: Colors.yellow.withOpacity(0.7),
                        width: 2,
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    padding: EdgeInsets.symmetric(
                      horizontal: MediaQuery.of(context).size.width * 0.05,
                      vertical: MediaQuery.of(context).size.height * 0.005,
                    ),
                    margin: EdgeInsets.symmetric(
                      horizontal: MediaQuery.of(context).size.width * 0.3,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        levelText("Level 2"),
                        levelText("9,777"),
                      ],
                    ),
                  ),
                ),    // Level
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: MediaQuery.of(context).size.width * 0.05,
                  ),
                  child: Text(
                    settings_info.biography,
                    textAlign: TextAlign.center,
                    style: sources.font_style(
                      //fontSize: 15,
                      fontSize: MediaQuery.of(context).size.height * 0.02,
                      //fontSize: MediaQuery.of(context).size.width * 0.035,
                      color: Colors.white.withOpacity(0.7),
                    ),
                  ),
                ),     // Biography
                Flexible(
                  child: Row(
                    children: [
                      cherpsOne(id: 0, "Your Cherps"),
                      cherpsOne(id: 1, "Received Cherps"),
                    ],
                  ),
                ),    // Cherps
              ],
            ),
          ),         // Profile
          ...List.generate(5, (index) => Padding(
            padding: EdgeInsets.symmetric(
              horizontal: MediaQuery.of(context).size.width * 0.05,
            ),
            child: const TheCard(),
          )),
        ],
      ),
    );
  }
}
