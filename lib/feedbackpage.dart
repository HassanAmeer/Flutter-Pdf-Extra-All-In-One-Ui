import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pdfall/aboutpage.dart';

class feedbackrout extends StatelessWidget {
  const feedbackrout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Help And Feedback"),
      ),
      body: Column(
        children: [
          ListTile(
            minVerticalPadding: 15,
            title: Text(
              "Help Center",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          ListTile(
            minVerticalPadding: 15,
            title: Text(
              "Join Beta Extra Group",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          GestureDetector(
            onTap: (() {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => avboutv()));
            }),
            child: ListTile(
              minVerticalPadding: 15,
              title: Text(
                "About",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
