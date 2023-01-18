import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

// import 'package:pdfall/home.dart';
import 'package:pdfall/home.dart';

void main(List<String> args) {
  runApp(btmnavbar());
}

class btmnavbar extends StatefulWidget {
  btmnavbar({super.key});

  @override
  State<btmnavbar> createState() => _btmnavbarState();
}

class _btmnavbarState extends State<btmnavbar> {
  final List routs = const [home(), tools(), settingroute()];

  int ivalue = 1;

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        title: "PDF Tools",
        theme: ThemeData(
          primarySwatch: Colors.red,
        ),
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          bottomNavigationBar: BottomNavigationBar(
              elevation: 30,
              onTap: ((value) {
                setState(() {
                  ivalue = value;
                });
              }),
              currentIndex: ivalue,
              items: [
                BottomNavigationBarItem(
                    icon: Icon(Icons.home_outlined),
                    tooltip: "Home",
                    label: "Home"),
                BottomNavigationBarItem(
                    icon: Icon(Icons.pages_outlined),
                    tooltip: "Tools",
                    label: "Tools"),
                BottomNavigationBarItem(
                    icon: Icon(Icons.settings),
                    tooltip: "Setting",
                    label: "Setting"),
              ]),
          body: routs[ivalue],
        ));
  }
}
