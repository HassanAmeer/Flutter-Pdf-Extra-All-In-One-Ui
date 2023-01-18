import 'dart:async';

import 'package:flutter/material.dart';
import 'package:pdfall/btmnavbar.dart';

void main() {
  runApp(const splashmainpage());
}

class splashmainpage extends StatelessWidget {
  const splashmainpage({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: splashscreen(),
    );
  }
}

class splashscreen extends StatefulWidget {
  const splashscreen({super.key});

  @override
  State<splashscreen> createState() => _splashscreenState();
}

class _splashscreenState extends State<splashscreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(
      Duration(seconds: 2),
      (() {
        print("object");
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => btmnavbar()),
        );
      }),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: FlutterLogo(
          size: 80,
        ),
      ),
    );
  }
}
