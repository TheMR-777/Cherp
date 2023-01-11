// ignore_for_file: unused_import, camel_case_types, prefer_const_constructors, non_constant_identifier_names, sized_box_for_whitespace, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers, unused_element

import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:flutter_svg/svg.dart';
import '../sources.dart';

class OTP_verification extends StatefulWidget {
  const OTP_verification({super.key});

  @override
  State<OTP_verification> createState() => _OTP_verificationState();
}

class _OTP_verificationState extends State<OTP_verification> {
  @override
  Widget build(BuildContext context) {
    final screen_height = MediaQuery.of(context).size.height;
    final screen_width = MediaQuery.of(context).size.width;

    Widget OTPbox() {
      return Container(
        height: screen_height * 0.07,
        width: screen_height * 0.07,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.white.withOpacity(0.1)),
        child: TextField(
          maxLength: 1,
          keyboardType: TextInputType.number,
          cursorColor: Colors.white,
          textAlign: TextAlign.center,
          decoration: InputDecoration(
            border: InputBorder.none,
            counterText: "",
          ),
        ),
      );
    }

    return Scaffold(
        body: Stack(
          children: [
            Container(
              height: screen_height,
              width: screen_width,
              child: Image.asset(
                sources.is_dark ? sources.background_profile_dark : sources.background_profile_light,
                fit: BoxFit.cover,
              ),
            ),
            ListView(
              children: [
                Align(
                  alignment: Alignment.center,
                  child: Container(
                    margin: EdgeInsets.only(
                        top: screen_height / 5, bottom: screen_height / 10),
                    height: screen_height / 8,
                    child: SvgPicture.asset(
                      "assets/Icon/main_gum.svg",
                      //fit: BoxFit.cover,
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.center,
                  child: Text("OTP Verification",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 17,
                      )),
                ),
                SizedBox(
                  height: screen_height / 70,
                ),
                Align(
                  alignment: Alignment.center,
                  child: Text(
                    "Enter the OTP sent to your number",
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 13,
                    ),
                  ),
                ),
                SizedBox(
                  height: screen_height / 20,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 30, right: 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      OTPbox(),
                      OTPbox(),
                      OTPbox(),
                      OTPbox(),
                    ],
                  ),
                ),
                SizedBox(
                  height: screen_height / 70,
                ),
                Center(
                  child: Text.rich(TextSpan(
                      text: "Didn't receive the code? ",
                      style: TextStyle(color: Colors.grey, fontSize: 13),
                      children: [
                        TextSpan(
                            text: "Resend",
                            style: TextStyle(
                                color: Color.fromARGB(255, 252, 231, 42),
                                fontSize: 13,
                                fontWeight: FontWeight.bold))
                      ])),
                ),
                SizedBox(
                  height: screen_height * 0.15,
                ),

                TheButton(
                  text: "Send OTP",
                  aspect: 0.15,
                  onPressed: () => Navigator.pushNamed(context, route.myHome),
                ),
                SizedBox(
                  height: screen_height * 0.05,
                ),
              ],
            )
          ],
        ));
  }
}
