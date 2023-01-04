import 'package:flutter/material.dart';
import '../../sources.dart';

class settings_info {
  static const name = "Bruce Wayne";
  static const username = "@i_am_batman";
  static const biography = "Your profile bio information along with status information will go here. You can also add a link to your website here, along with your social media links.";
}

class MyAvatar extends StatelessWidget {
  const MyAvatar({this.aspect = 0.2, Key? key}) : super(key: key);

  final double aspect;

  @override
  Widget build(BuildContext context) => Container(
    decoration: BoxDecoration(
      shape: BoxShape.circle,
      border: Border.all(
        color: Colors.white,
        width: 2,
      ),
    ),
    child: CircleAvatar(
      foregroundImage: const AssetImage("assets/Placeholder/P2.png"),
      radius: MediaQuery.of(context).size.width * aspect,
    ),
  );
}

class Tweets extends StatelessWidget {
  const Tweets({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 5,
      padding: EdgeInsets.symmetric(
        horizontal: MediaQuery.of(context).size.width * 0.05,
      ),
      itemBuilder: (context, index) => const TheCard(),
    );
  }
}
