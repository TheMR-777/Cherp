// ignore_for_file: unused_import, prefer_const_constructors, unused_local_variable, non_constant_identifier_names, sized_box_for_whitespace, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '04_notification.dart';
import '../sources.dart';

class contact extends StatefulWidget {
  const contact({super.key});

  @override
  State<contact> createState() => _contactState();
}

class _contactState extends State<contact> {
  @override
  Widget build(BuildContext context) {
    final screen_height = MediaQuery.of(context).size.height;
    final screen_width = MediaQuery.of(context).size.width;
    return Scaffold(
        body: Stack(
            children: [
              Container(
                height: screen_height,
                width: screen_width,
                child: Image.asset(
                  sources.background_dark,
                  fit: BoxFit.cover,
                ),
              ),
              ListView(
                padding: EdgeInsets.only(
                    top: screen_height / 15,
                    bottom: screen_height / 15,
                    left: screen_width / 15,
                    right: screen_width / 15),
                children: [
                  Text("Contacts",
                      style: TextStyle(
                          letterSpacing: 2,
                          color: Colors.white,
                          fontSize: 23,
                          fontWeight: FontWeight.bold)),
                  SizedBox(
                    height: screen_height * 0.07,
                  ),
                  list_tile(screen_height, screen_width, 'assets/Placeholder/1.png',
                      "Contact 1", " +92 300 1234567"),
                  list_tile(screen_height, screen_width, 'assets/Placeholder/4.png',
                      "Contact 2", " +92 301 0000000"),
                  list_tile(screen_height, screen_width, 'assets/Placeholder/3.png',
                      "Contact 3", " +92 310 2468975"),
                  list_tile(screen_height, screen_width, 'assets/Placeholder/7.png',
                      "Contact 4", " +92 311 1212123"),
                  list_tile1(screen_height, screen_width, 'assets/Placeholder/6.png',
                      "Contact 5", " +92 305 4445555"),
                  list_tile1(screen_height, screen_width, 'assets/Placeholder/6.png',
                      "Contact 6", " +92 341 7676000")
                ],
              )
            ]));
  }
}

Widget list_tile(screen_height, screen_width, String img, name, number) {
  return ListTile(
      onLongPress: () {},
      leading: CircleAvatar(
        radius: 25,
        backgroundImage: AssetImage(img),
      ),
      title: Text(
        name,
        style: TextStyle(
          color: Color.fromARGB(255, 252, 231, 42),
          fontSize: 17,
        ),
      ),
      subtitle: Text(
        number,
        style: TextStyle(
          color: Colors.white,
          fontSize: 13,
        ),
      ),
      trailing: Container(
          height: screen_height * 0.035,
          width: screen_width * 0.1,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
          ),
          child: SvgPicture.asset(
            "assets/Icon/main_transparent.svg",
            color: Color.fromARGB(255, 252, 231, 42),
          )));
}

Widget list_tile1(screen_height, screen_width, String img1, name1, number1) {
  return ListTile(
      onLongPress: () {},
      leading: CircleAvatar(
        radius: 25,
        backgroundImage: AssetImage(img1),
      ),
      title: Text(
        name1,
        style: TextStyle(
          color: Color.fromARGB(255, 252, 231, 42),
          fontSize: 17,
        ),
      ),
      subtitle: Text(
        number1,
        style: TextStyle(
          color: Colors.white,
          fontSize: 13,
        ),
      ),
      trailing: Container(
          height: screen_height * 0.035,
          width: screen_width * 0.15,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            border: Border.all(
              color: Color.fromARGB(255, 252, 231, 42),
            ),
          ),
          child: Center(
            child: Text(
              "Invite",
              style: TextStyle(
                color: Color.fromARGB(255, 252, 231, 42),
                fontSize: screen_height * 0.017,
              ),
            ),
          )));
}
