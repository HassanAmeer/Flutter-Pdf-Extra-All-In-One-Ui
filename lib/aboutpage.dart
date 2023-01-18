import 'package:flutter/material.dart';

class avboutv extends StatelessWidget {
  const avboutv({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("About"),
        ),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Center(
            child: Column(
              children: [
                Icon(Icons.picture_as_pdf),
                Text(
                  "PDF Extra",
                  style: TextStyle(fontSize: 40),
                ),
                Text("Version 1.0.0"),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Libraries used",
                  style: TextStyle(
                      color: Colors.cyan,
                      fontSize: 18,
                      decorationStyle: TextDecorationStyle.solid),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "DART",
                  style: TextStyle(
                      color: Colors.cyan,
                      fontSize: 18,
                      decorationStyle: TextDecorationStyle.solid),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Privacy Policy",
                  style: TextStyle(
                      color: Colors.cyan,
                      fontSize: 18,
                      decorationStyle: TextDecorationStyle.solid),
                ),
                SizedBox(
                  height: 25,
                ),
                Text("CopyRight @ 2009-2022"),
                SizedBox(
                  height: 5,
                ),
                Text("Mobisystem, inc"),
              ],
            ),
          ),
        ));
  }
}
