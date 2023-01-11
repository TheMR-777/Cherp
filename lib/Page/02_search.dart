import 'package:flutter/material.dart';
import 'src/sources.dart';

class MySearch extends StatelessWidget {
  const MySearch({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Column(
    children: [
      SizedBox(
          height: MediaQuery.of(context).size.height * 0.04
      ),        // 4% Empty screen height
      Padding(
        padding: EdgeInsets.symmetric(
          horizontal: MediaQuery.of(context).size.width * 0.05,
          vertical: MediaQuery.of(context).size.height * 0.01,
        ),
        child: text_field(context, "Search"),
      ),         // Search bar
      const Expanded(
          child: Tweets()
      ),  // Tweets
    ],
  );
}