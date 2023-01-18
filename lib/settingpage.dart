import 'dart:html';

import 'package:flutter/material.dart';

// settingpage

class settingofuseraccount extends StatefulWidget {
  settingofuseraccount({super.key});

  @override
  State<settingofuseraccount> createState() => _settingofuseraccountState();
}

class _settingofuseraccountState extends State<settingofuseraccount> {
  bool stngcheckboxval = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Settings"),
      ),
      body: Column(
        children: [
          CheckboxListTile(
            contentPadding: EdgeInsets.all(10),
            value: stngcheckboxval,
            tristate: false,
            onChanged: (value) {
              setState(() {
                stngcheckboxval = !stngcheckboxval;
              });
            },
            title: Text("Use My Documents As Home"),
            subtitle: Text("Show My Documents as first screen on startup"),
          ),
          ListTile(
            minVerticalPadding: 20,
            title: Text("MY Documents Folder"),
            subtitle: Text("Change Path To My documents folder"),
          ),
          ListTile(
            minVerticalPadding: 20,
            title: Text("Author Name"),
            subtitle: Text(
                "The auther name is displayed In comments and tracked changes"),
          ),
        ],
      ),
    );
  }
}
