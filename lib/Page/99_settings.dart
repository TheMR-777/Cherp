import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'src/sources.dart';
import '../sources.dart';

class MySettings extends StatefulWidget {
  const MySettings({Key? key}) : super(key: key);

  static final text_controller = List.generate(3, (index) => TextEditingController());

  @override
  State<MySettings> createState() => _MySettingsState();
}

class _MySettingsState extends State<MySettings> {
  @override
  Widget build(BuildContext context) {
    final my_spacing = SizedBox(
      height: MediaQuery.of(context).size.height * 0.02,
    );

    return DarkOne(
      child: ListView(
        padding: EdgeInsets.only(
          top: MediaQuery.of(context).size.height * 0.1,
          left: MediaQuery.of(context).size.width * 0.05,
          right: MediaQuery.of(context).size.width * 0.05,
          bottom: MediaQuery.of(context).size.height * 0.1,
        ),
        children: [
          Stack(
            alignment: Alignment.center,
            children: [
              const MyAvatar(),
              Positioned(
                bottom: 0,
                right: MediaQuery.of(context).size.width * 0.28,
                child: GestureDetector(
                  onTap: () {},
                  child: SvgPicture.asset("assets/Icon/settings_photo_edit.svg", width: MediaQuery.of(context).size.width * 0.1),
                ),
              ),
            ],
          ),    // Avatar and edit button
          SizedBox(height: MediaQuery.of(context).size.height * 0.05),
          text_field(context, "Username"),
          my_spacing,
          text_field(context, "Full Name"),
          my_spacing,
          text_field(context, "Profile Bio"),
          my_spacing,
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
              "Save",
              style: sources.font_style(
                color: Colors.black,
                fontSize: 18,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class ViaEditButton extends StatelessWidget {
  const ViaEditButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => const Scaffold(
    body: MySettings(),
  );
}
