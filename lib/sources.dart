import 'package:flutter/cupertino.dart' show CupertinoIcons;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class route {
  static const signIn = "sign-in";
  static const verify = "verification";
  static const myHome = "home";
}

class sources {
  static var is_dark = true;

  static const color_dark = Colors.black;
  static const color_light = Colors.white;

  static final color_selected = is_dark ? color_dark : color_light;
  static final color_TheOther = is_dark ? color_light : color_dark;

  static const icon_main = "assets/Icon/main_transparent.svg";
  static const background = "assets/background_dark.png";
  static const font_style = GoogleFonts.outfit;

  static const background_light = "assets/background_light.png";

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
    decoration: BoxDecoration(
      image: DecorationImage(
        image: AssetImage(
          sources.is_dark ? sources.background : sources.background_light,
        ),
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
              color: sources.color_TheOther,
              fontSize: MediaQuery.of(context).size.width * 0.04,
            ),
          )
        ],
      ),
    );

    return Container(
      decoration: BoxDecoration(
        color: sources.is_dark ? sources.color_dark.withOpacity(0.2) : sources.color_light,
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
                child: Icon(CupertinoIcons.arrow_right_circle_fill, color: Colors.yellow),
              ),  // Arrow
              getAvatar(path: sources.avatar_02, name: "2nd Name"),
            ],
          ),      // Avatars
          Text(
            "Here is the sample text, which is going to be replaced with the actual "
                "tweet. This is just a placeholder for now. I am going to further design "
                "the application.",
            style: sources.font_style(
              color: sources.color_TheOther.withOpacity(0.8),
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
                    color: is_enabled ? Colors.red : sources.color_TheOther,
                ),
              ),
              Text(
                "  1.2K",
                style: sources.font_style(
                  color: sources.color_TheOther,
                  fontSize: 15,
                ),
              ),
              const SizedBox(width: 10),
              Icon(Icons.message_rounded, color: sources.color_TheOther),
            ],
          ),      // Icons
        ],
      ),
    );
  }
}