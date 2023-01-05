// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'src/sources.dart';
import '../sources.dart';

class MySettings extends StatefulWidget {
  const MySettings({Key? key}) : super(key: key);

  static final text_controller = List.generate(3, (index) => TextEditingController());

  @override
  State<MySettings> createState() => _MySettingsState();
}

class _MySettingsState extends State<MySettings> {

  static final field_border_style = OutlineInputBorder(
    borderRadius: BorderRadius.circular(15),
    borderSide: BorderSide(
      color: Colors.white.withOpacity(0.7),
    ),
  );

  @override
  Widget build(BuildContext context) {

    Widget text_field(String label) => TextFormField(
      style: sources.font_style(
        color: Colors.white,
        // fontSize: 18,
        fontSize: MediaQuery.of(context).size.width * 0.04,
      ),
      maxLines: null,
      cursorColor: Colors.white.withOpacity(0.7),
      decoration: InputDecoration(
        // Set some default text
        filled: true,
        fillColor: Colors.white.withOpacity(0.07),
        contentPadding: EdgeInsets.symmetric(
          horizontal: MediaQuery.of(context).size.width * 0.05,
          vertical: MediaQuery.of(context).size.height * 0.02,
        ),
        labelText: label,
        labelStyle: sources.font_style(
          color: Colors.white.withOpacity(0.7),
          fontSize: 18,
        ),
        enabledBorder: field_border_style,
        focusedBorder: field_border_style,
      ),
    );
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
          const MyAvatar(),
          SizedBox(height: MediaQuery.of(context).size.height * 0.05),
          text_field("Username"),
          my_spacing,
          text_field("Full Name"),
          my_spacing,
          text_field("Profile Bio"),
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
