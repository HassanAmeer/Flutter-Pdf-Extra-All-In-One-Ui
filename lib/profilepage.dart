import 'dart:html';

import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:pdfall/feedbackpage.dart';
import 'package:pdfall/settingpage.dart';

class proflev extends StatefulWidget {
  const proflev({super.key});

  @override
  State<proflev> createState() => _proflevState();
}

class _proflevState extends State<proflev> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(244, 237, 237, 237),
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(color: Colors.black, Icons.arrow_back)),
        title: Text(
          "Account",
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.white,
      ),
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.all(30),
            child: Row(
              children: [
                CircleAvatar(
                  radius: 35,
                  backgroundColor: Color.fromARGB(255, 213, 213, 213),
                  child: Icon(size: 50, color: Colors.white, Icons.person),
                ),
                Container(
                  margin: EdgeInsets.only(left: 20),
                  child: Text(
                    " SIGN IN ",
                    style: TextStyle(
                        color: Colors.red.shade800,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 2,
                        fontSize: 15),
                  ),
                ),
              ],
            ),
          ),
          GestureDetector(
            onTap: (() {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => feedbackrout()));
            }),
            child: Container(
              color: Colors.white,
              margin: EdgeInsets.all(1),
              child: ListTile(
                minVerticalPadding: 20,
                leading: Icon(Icons.question_mark_outlined),
                title: Text(
                  "Help And FeedBack",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: (() {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => settingofuseraccount()));
            }),
            child: Container(
              color: Colors.white,
              margin: EdgeInsets.all(1),
              child: ListTile(
                minVerticalPadding: 20,
                leading: Icon(Icons.settings_outlined),
                title: Text(
                  "Settings",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
