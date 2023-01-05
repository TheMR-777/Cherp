// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class sources {
  static const icon_main = "assets/Icon/main_transparent.svg";
  static const background = "assets/background_dark.png";
  static const font_style = GoogleFonts.outfit;

  static const icon_video = "assets/Icon/add_video.svg";
  static const icon_photo = "assets/Icon/add_photo.svg";
  static const icon_audio = "assets/Icon/add_audio.svg";
  static const icon_phone = "assets/Icon/add_phone.svg";

  static const avatar_01 = "assets/Placeholder/P1.png";
  static const avatar_02 = "assets/Placeholder/P2.png";

  static const image_01 = "assets/Placeholder/Image1.png";
}

class DarkOne extends StatelessWidget {
  const DarkOne({
    required this.child,
    Key? key
  }) : super(key: key);

  final Widget child;

  @override
  Widget build(BuildContext context) => Container(
    decoration: const BoxDecoration(
      image: DecorationImage(
        image: AssetImage(sources.background),
        fit: BoxFit.cover,
      ),
    ),
    child: child,
  );
}

class TheCard extends StatefulWidget {
  const TheCard({
    Key? key
  }) : super(key: key);

  @override
  State<TheCard> createState() => _TheCardState();
}

class _TheCardState extends State<TheCard> {
  bool is_enabled = false;

  @override
  Widget build(BuildContext context) {

    Widget getAvatar({
      required String path,
      required String name,
    }) => Expanded(
      child: Row(
        children: [
          Flexible(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: Colors.white,
                    width: 2,
                  ),
                ),
                child: CircleAvatar(
                  backgroundImage: AssetImage(path),
                  radius: 25,
                ),
              ),
            ),
          ),
          Text(
            name,
            style: sources.font_style(
              color: Colors.white,
              fontSize: MediaQuery.of(context).size.width * 0.04,
            ),
          )
        ],
      ),
    );

    return Container(
      decoration: BoxDecoration(
        color: Colors.black.withOpacity(0.2),
        borderRadius: BorderRadius.circular(10),
      ),
      margin: EdgeInsets.symmetric(
        vertical: MediaQuery.of(context).size.height * 0.02,
      ),
      padding: EdgeInsets.symmetric(
        horizontal: MediaQuery.of(context).size.width * 0.05,
        vertical: MediaQuery.of(context).size.height * 0.025,
      ),
      width: double.infinity,
      child: Column(
        children: [
          Row(
            children: [
              getAvatar(path: sources.avatar_01, name: "1st Name"),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Icon(Icons.arrow_circle_right_rounded, color: Colors.yellow),
              ),  // Arrow
              getAvatar(path: sources.avatar_02, name: "2nd Name"),
            ],
          ),      // Avatars
          Text(
            "Here is the sample text, which is going to be replaced with the actual "
                "tweet. This is just a placeholder for now. I am going to further design "
                "the application.",
            style: sources.font_style(
              color: Colors.white.withOpacity(0.8),
              fontSize: 15,
              height: 1.5,
            ),
          ),     // Text
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(sources.image_01, width: double.infinity, height: 200, fit: BoxFit.cover),
            ),
          ),  // Image
          Row(
            children: [
              InkWell(
                onTap: () => setState(() => is_enabled = !is_enabled),
                child: Icon(
                    is_enabled ? Icons.favorite : Icons.favorite_border,
                    color: Colors.white
                ),
              ),
              Text(
                "  1.2K",
                style: sources.font_style(
                  color: Colors.white,
                  fontSize: 15,
                ),
              ),
              const SizedBox(width: 10),
              const Icon(Icons.message_rounded, color: Colors.white),
            ],
          ),      // Icons
        ],
      ),
    );
  }
}