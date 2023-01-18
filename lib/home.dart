import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:get/state_manager.dart';
import 'package:pdfall/feedbackpage.dart';
import 'package:pdfall/profilepage.dart';
import 'package:pdfall/searchpage.dart';
import 'package:pdfall/settingpage.dart';

class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  final _headingcolor = Color.fromARGB(255, 168, 168, 168);
  final _ownredtheme = Colors.red.shade800;
  final _boxwidth = Get.size.width * 0.22;
  final _boxheight = Get.size.height * 0.1;
  bool _darktheme = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(244, 237, 237, 237),
      appBar: AppBar(
        // backgroundColor: Colors.white,
        title: Text(
          "PDF All",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {
              Get.to(searchbar());
            },
            icon: Icon(
              Icons.search,
            ),
            color: Colors.black,
          ),
          IconButton(
            onPressed: () {
              Get.to(proflev());
            },
            icon: Icon(
              Icons.person_rounded,
            ),
            color: Colors.black,
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(
            color: Color.fromARGB(255, 231, 231, 231),
            Icons.camera_enhance_outlined),
      ),
      body: SingleChildScrollView(
          padding: EdgeInsets.all(8.0),
          child: Column(
            children: [
              SizedBox(
                height: 10,
              ),
              Wrap(
                spacing: 10,
                children: [
                  GestureDetector(
                    onTap: () {
                      print("edit box clicked");
                    },
                    child: Container(
                      width: _boxwidth,
                      height: _boxheight,
                      padding: EdgeInsets.all(9),
                      child: Center(
                        child: Column(
                          children: [
                            Icon(
                              Icons.edit,
                              color: _ownredtheme,
                            ),
                            Text("Edit Text & Images"),
                          ],
                        ),
                      ),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      print("edit box clicked");
                    },
                    child: Container(
                      width: _boxwidth,
                      height: _boxheight,
                      padding: EdgeInsets.all(9),
                      child: Center(
                        child: Column(
                          children: [
                            Icon(
                              Icons.photo_camera_outlined,
                              color: _ownredtheme,
                            ),
                            Text("Scan To PDF"),
                          ],
                        ),
                      ),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      print("edit box clicked");
                    },
                    child: Container(
                      width: _boxwidth,
                      height: _boxheight,
                      padding: EdgeInsets.all(9),
                      child: Center(
                        child: Column(
                          children: [
                            Icon(
                              Icons.edit_note,
                              color: _ownredtheme,
                            ),
                            Text(" Fill & Sign"),
                          ],
                        ),
                      ),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      print("Combine PDFs");
                    },
                    child: Container(
                      width: _boxwidth,
                      height: _boxheight,
                      padding: EdgeInsets.all(9),
                      child: Center(
                        child: Column(
                          children: [
                            Icon(
                              Icons.copy,
                              color: _ownredtheme,
                            ),
                            Text(" Combine PDFs"),
                          ],
                        ),
                      ),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Wrap(
                spacing: 10,
                children: [
                  GestureDetector(
                    onTap: () {
                      print("edit box clicked");
                    },
                    child: Container(
                      width: _boxwidth,
                      height: _boxheight,
                      padding: EdgeInsets.all(9),
                      child: Center(
                        child: Column(
                          children: [
                            Icon(
                              Icons.picture_as_pdf_outlined,
                              color: _ownredtheme,
                            ),
                            Text("Img To PDF"),
                          ],
                        ),
                      ),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      print("create blanked");
                    },
                    child: Container(
                      width: _boxwidth,
                      height: _boxheight,
                      padding: EdgeInsets.all(9),
                      child: Center(
                        child: Column(
                          children: [
                            Icon(
                              Icons.picture_as_pdf_sharp,
                              color: _ownredtheme,
                            ),
                            Text("PDF TO Img"),
                          ],
                        ),
                      ),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      print("edit box clicked");
                    },
                    child: Container(
                      width: _boxwidth,
                      height: _boxheight,
                      padding: EdgeInsets.all(9),
                      child: Center(
                        child: Column(
                          children: [
                            Icon(
                              Icons.remove_red_eye_outlined,
                              color: _ownredtheme,
                            ),
                            Text("Read"),
                          ],
                        ),
                      ),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      print("create blanked");
                    },
                    child: Container(
                      width: _boxwidth,
                      height: _boxheight,
                      padding: EdgeInsets.all(9),
                      child: Center(
                        child: Column(
                          children: [
                            Icon(
                              Icons.more_horiz_rounded,
                              color: _ownredtheme,
                            ),
                            Text("More"),
                          ],
                        ),
                      ),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                decoration: BoxDecoration(
                    color: Color.fromARGB(231, 239, 252, 255),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.blueGrey.withOpacity(0.5),
                          offset: Offset(1, 1),
                          blurRadius: 10),
                    ],
                    borderRadius: BorderRadius.circular(15)),
                margin: EdgeInsets.all(10),
                child: Stack(
                  children: [
                    Positioned(
                        right: 18,
                        top: 6,
                        child: SizedBox(
                          width: 10,
                          child:
                              Icon(color: Colors.grey, Icons.cancel_outlined),
                        )),
                    ListTile(
                      contentPadding: EdgeInsets.all(15),
                      leading: Icon(Icons.image_aspect_ratio),
                      title: Text(
                        "Title here",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      subtitle: Text("Something About This"),
                    ),
                    Positioned(
                      right: 10,
                      bottom: 5,
                      child: Text(
                        "Try It Now",
                        style: TextStyle(
                            shadows: [
                              BoxShadow(
                                  color: Colors.black, offset: Offset(1, 1))
                            ],
                            color: Color.fromARGB(255, 4, 153, 172),
                            letterSpacing: 1),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10),
                        topRight: Radius.circular(10))),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "RECENT FILES",
                        style: TextStyle(color: _headingcolor),
                      ),
                    ),
                    ListTile(
                      leading: Icon(Icons.picture_as_pdf_sharp),
                      title: Text("Pdf1.pdf"),
                      subtitle: Row(
                        children: [
                          Icon(size: 15, Icons.mobile_friendly_outlined),
                          Text(" Oct 10, 2022, 09.27-2.82 MB")
                        ],
                      ),
                      trailing: Icon(Icons.more_vert_rounded),
                    ),
                    ListTile(
                      leading: Icon(Icons.picture_as_pdf_sharp),
                      title: Text("Pdf1.pdf"),
                      subtitle: Row(
                        children: [
                          Icon(size: 15, Icons.mobile_friendly_outlined),
                          Text(" Oct 10, 2022, 09.27-2.82 MB")
                        ],
                      ),
                      trailing: Icon(Icons.more_vert_rounded),
                    ),
                    ListTile(
                      leading: Icon(Icons.picture_as_pdf_sharp),
                      title: Text("Pdf1.pdf"),
                      subtitle: Row(
                        children: [
                          Icon(size: 15, Icons.mobile_friendly_outlined),
                          Text(" Oct 10, 2022, 09.27-2.82 MB")
                        ],
                      ),
                      trailing: Icon(Icons.more_vert_rounded),
                    ),
                    ListTile(
                      leading: Icon(Icons.picture_as_pdf_sharp),
                      title: Text("Pdf1.pdf"),
                      subtitle: Row(
                        children: [
                          Icon(size: 15, Icons.mobile_friendly_outlined),
                          Text(" Oct 10, 2022, 09.27-2.82 MB")
                        ],
                      ),
                      trailing: Icon(Icons.more_vert_rounded),
                    ),
                    ListTile(
                      leading: Icon(Icons.picture_as_pdf_sharp),
                      title: Text("Pdf1.pdf"),
                      subtitle: Row(
                        children: [
                          Icon(size: 15, Icons.mobile_friendly_outlined),
                          Text(" Oct 10, 2022, 09.27-2.82 MB")
                        ],
                      ),
                      trailing: Icon(Icons.more_vert_rounded),
                    ),
                    ListTile(
                      leading: Icon(Icons.picture_as_pdf_sharp),
                      title: Text("Pdf1.pdf"),
                      subtitle: Row(
                        children: [
                          Icon(size: 15, Icons.mobile_friendly_outlined),
                          Text(" Oct 10, 2022, 09.27-2.82 MB")
                        ],
                      ),
                      trailing: Icon(Icons.more_vert_rounded),
                    ),
                    ListTile(
                      leading: Icon(Icons.picture_as_pdf_sharp),
                      title: Text("Pdf1.pdf"),
                      subtitle: Row(
                        children: [
                          Icon(size: 15, Icons.mobile_friendly_outlined),
                          Text(" Oct 10, 2022, 09.27-2.82 MB")
                        ],
                      ),
                      trailing: Icon(Icons.more_vert_rounded),
                    ),
                  ],
                ),
              )
            ],
          )),
    );
  }
}

/*********************************************** */

class tools extends StatefulWidget {
  const tools({super.key});

  @override
  State<tools> createState() => _toolsState();
}

class _toolsState extends State<tools> {
  final _headingcolor = Color.fromARGB(255, 168, 168, 168);
  final _ownredtheme = Colors.red.shade800;
  final _boxwidth = Get.size.width * 0.22;
  final _boxheight = Get.size.height * 0.1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //  backgroundColor: Color.fromARGB(244, 237, 237, 237),
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 20,
        shadowColor: Color.fromARGB(144, 73, 73, 73),
        title: Text(
          "Tools",
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        actions: [
          IconButton(
            onPressed: () {
              Get.to(proflev());
            },
            icon: Icon(
              Icons.person_rounded,
            ),
            color: Colors.black,
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(8.0),
        child: Column(
          children: [
            Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 15,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "EDIT",
                        style: TextStyle(
                            color: _headingcolor,
                            letterSpacing: 1,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Wrap(
                      spacing: 10,
                      children: [
                        GestureDetector(
                          onTap: () {
                            print("edit box clicked");
                          },
                          child: Container(
                            width: _boxwidth,
                            height: _boxheight,
                            padding: EdgeInsets.all(9),
                            child: Center(
                              child: Column(
                                children: [
                                  Icon(
                                    Icons.edit,
                                    color: _ownredtheme,
                                  ),
                                  Text("Edit Text & Images"),
                                ],
                              ),
                            ),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.white),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            print("edit box clicked");
                          },
                          child: Container(
                            width: _boxwidth,
                            height: _boxheight,
                            padding: EdgeInsets.all(9),
                            child: Center(
                              child: Column(
                                children: [
                                  Icon(
                                    Icons.edit_note,
                                    color: _ownredtheme,
                                  ),
                                  Text(" Fill & Sign"),
                                ],
                              ),
                            ),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.white),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            print("edit box clicked");
                          },
                          child: Container(
                            width: _boxwidth,
                            height: _boxheight,
                            padding: EdgeInsets.all(9),
                            child: Center(
                              child: Column(
                                children: [
                                  Icon(
                                    Icons.pages_rounded,
                                    color: _ownredtheme,
                                  ),
                                  Text(" Organize Page"),
                                ],
                              ),
                            ),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.white),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            print("insert page clicked");
                          },
                          child: Container(
                            width: _boxwidth,
                            height: _boxheight,
                            padding: EdgeInsets.all(9),
                            child: Center(
                              child: Column(
                                children: [
                                  Icon(
                                    Icons.insert_page_break,
                                    color: _ownredtheme,
                                  ),
                                  Text(
                                    " Insert Page",
                                    style: TextStyle(letterSpacing: 2),
                                  ),
                                ],
                              ),
                            ),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "CREATE",
                        style: TextStyle(
                            color: _headingcolor,
                            letterSpacing: 1,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Wrap(
                      spacing: 10,
                      children: [
                        GestureDetector(
                          onTap: () {
                            print("edit box clicked");
                          },
                          child: Container(
                            width: _boxwidth,
                            height: _boxheight,
                            padding: EdgeInsets.all(9),
                            child: Center(
                              child: Column(
                                children: [
                                  Icon(
                                    Icons.photo_camera_outlined,
                                    color: _ownredtheme,
                                  ),
                                  Text("Scan To PDF"),
                                ],
                              ),
                            ),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.white),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            print("create blanked");
                          },
                          child: Container(
                            width: _boxwidth,
                            height: _boxheight,
                            padding: EdgeInsets.all(9),
                            child: Center(
                              child: Column(
                                children: [
                                  Icon(
                                    Icons.file_copy_outlined,
                                    color: _ownredtheme,
                                  ),
                                  Text("Create Blank"),
                                ],
                              ),
                            ),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.white),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            print("Combine PDFs");
                          },
                          child: Container(
                            width: _boxwidth,
                            height: _boxheight,
                            padding: EdgeInsets.all(9),
                            child: Center(
                              child: Column(
                                children: [
                                  Icon(
                                    Icons.copy,
                                    color: _ownredtheme,
                                  ),
                                  Text(" Combine PDFs"),
                                ],
                              ),
                            ),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 18,
            ),
            Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "CONVERT",
                        style: TextStyle(
                            color: _headingcolor,
                            letterSpacing: 1,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Wrap(
                      spacing: 10,
                      children: [
                        GestureDetector(
                          onTap: () {
                            print("edit box clicked");
                          },
                          child: Container(
                            width: _boxwidth,
                            height: _boxheight,
                            padding: EdgeInsets.all(9),
                            child: Center(
                              child: Column(
                                children: [
                                  Icon(
                                    Icons.picture_as_pdf_outlined,
                                    color: _ownredtheme,
                                  ),
                                  Text("Img To PDF"),
                                ],
                              ),
                            ),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.white),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            print("create blanked");
                          },
                          child: Container(
                            width: _boxwidth,
                            height: _boxheight,
                            padding: EdgeInsets.all(9),
                            child: Center(
                              child: Column(
                                children: [
                                  Icon(
                                    Icons.picture_as_pdf_sharp,
                                    color: _ownredtheme,
                                  ),
                                  Text("PDF TO Img"),
                                ],
                              ),
                            ),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 18,
            ),
            Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "READ AND REVIEW",
                        style: TextStyle(
                            color: _headingcolor,
                            letterSpacing: 1,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Wrap(
                      spacing: 10,
                      children: [
                        GestureDetector(
                          onTap: () {
                            print("edit box clicked");
                          },
                          child: Container(
                            width: _boxwidth,
                            height: _boxheight,
                            padding: EdgeInsets.all(9),
                            child: Center(
                              child: Column(
                                children: [
                                  Icon(
                                    Icons.remove_red_eye_outlined,
                                    color: _ownredtheme,
                                  ),
                                  Text("Read"),
                                ],
                              ),
                            ),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.white),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            print("create blanked");
                          },
                          child: Container(
                            width: _boxwidth,
                            height: _boxheight,
                            padding: EdgeInsets.all(9),
                            child: Center(
                              child: Column(
                                children: [
                                  Icon(
                                    Icons.text_fields,
                                    color: _ownredtheme,
                                  ),
                                  Text("Anotate"),
                                ],
                              ),
                            ),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.white),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            print("create blanked");
                          },
                          child: Container(
                            width: _boxwidth,
                            height: _boxheight,
                            padding: EdgeInsets.all(9),
                            child: Center(
                              child: Column(
                                children: [
                                  Icon(
                                    Icons.print_outlined,
                                    color: _ownredtheme,
                                  ),
                                  Text("print"),
                                ],
                              ),
                            ),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.white),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            print("create blanked");
                          },
                          child: Container(
                            width: _boxwidth,
                            height: _boxheight,
                            padding: EdgeInsets.all(9),
                            child: Center(
                              child: Column(
                                children: [
                                  Icon(
                                    Icons.lock_outline,
                                    color: _ownredtheme,
                                  ),
                                  Text("protect"),
                                ],
                              ),
                            ),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 8,
            ),
            Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Wrap(
                      spacing: 10,
                      children: [
                        GestureDetector(
                          onTap: () {
                            print("create blanked");
                          },
                          child: Container(
                            width: _boxwidth,
                            height: _boxheight,
                            padding: EdgeInsets.all(9),
                            child: Center(
                              child: Column(
                                children: [
                                  Icon(
                                    Icons.share_outlined,
                                    color: _ownredtheme,
                                  ),
                                  Text("share"),
                                ],
                              ),
                            ),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 18,
            ),
            Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "OTHERS",
                        style: TextStyle(
                            color: _headingcolor,
                            letterSpacing: 1,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Wrap(
                      spacing: 10,
                      children: [
                        GestureDetector(
                          onTap: () {
                            print("edit box clicked");
                          },
                          child: Container(
                            width: _boxwidth,
                            height: _boxheight,
                            padding: EdgeInsets.all(9),
                            child: Center(
                              child: Column(
                                children: [
                                  Icon(
                                    Icons.monitor,
                                    color: _ownredtheme,
                                  ),
                                  Text("PDf Extra Windows"),
                                ],
                              ),
                            ),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.white),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            print("create blanked");
                          },
                          child: Container(
                            width: _boxwidth,
                            height: _boxheight,
                            padding: EdgeInsets.all(9),
                            child: Center(
                              child: Column(
                                children: [
                                  Icon(
                                    Icons.drive_file_move_outline,
                                    color: _ownredtheme,
                                  ),
                                  Text("MobiDrive"),
                                ],
                              ),
                            ),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.white),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            print("create blanked");
                          },
                          child: Container(
                            width: _boxwidth,
                            height: _boxheight,
                            padding: EdgeInsets.all(9),
                            child: Center(
                              child: Column(
                                children: [
                                  Icon(
                                    Icons.how_to_reg_outlined,
                                    color: _ownredtheme,
                                  ),
                                  Text("OfficeSuite"),
                                ],
                              ),
                            ),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.white),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            print("create blanked");
                          },
                          child: Container(
                            width: _boxwidth,
                            height: _boxheight,
                            padding: EdgeInsets.all(9),
                            child: Center(
                              child: Column(
                                children: [
                                  Icon(
                                    Icons.mobile_friendly,
                                    color: _ownredtheme,
                                  ),
                                  Text("Internel Storage"),
                                ],
                              ),
                            ),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 6,
            ),
          ], // here is a main colum with scroll
        ),
      ),
    );
  }
}

/******************************************************* */

/*

class filesfun extends StatefulWidget {
  const filesfun({super.key});

  @override
  State<filesfun> createState() => _filesfunState();
}

class _filesfunState extends State<filesfun> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //  backgroundColor: Color.fromARGB(244, 237, 237, 237),
      appBar: AppBar(
        title: Text(
          "Files",
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.white,
        actions: [
          IconButton(
              onPressed: () {
                Get.to(proflev());
              },
              icon: Icon(color: Colors.black, Icons.person))
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.all(20),
              child: Text("Location"),
            ),
            Container(
              margin: EdgeInsets.all(1),
              color: Colors.white,
              child: GestureDetector(
                onTap: (() {
                  print("click 1");
                }),
                child: ListTile(
                  contentPadding: EdgeInsets.all(10),
                  minVerticalPadding: 10,
                  leading: Icon(size: 40, Icons.download),
                  title: Text(
                    "Downloads",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.all(1),
              color: Colors.white,
              child: GestureDetector(
                onTap: (() {
                  print("click 2");
                }),
                child: ListTile(
                  contentPadding: EdgeInsets.all(10),
                  minVerticalPadding: 10,
                  leading: Icon(size: 40, Icons.folder_outlined),
                  title: Text(
                    "My Documents",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text("External Storage  > Pdf Extra"),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.all(1),
              color: Colors.white,
              child: GestureDetector(
                onTap: (() {
                  print("click 3");
                }),
                child: ListTile(
                  contentPadding: EdgeInsets.all(10),
                  minVerticalPadding: 10,
                  leading: Icon(size: 40, Icons.mobile_friendly),
                  title: Text(
                    "Internel Storage",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text("Filse Saved On Internel Storage"),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.all(1),
              color: Colors.white,
              child: GestureDetector(
                onTap: (() {
                  print("click 2");
                }),
                child: ListTile(
                  contentPadding: EdgeInsets.all(10),
                  minVerticalPadding: 10,
                  leading: Icon(size: 40, Icons.cloud_outlined),
                  title: Text(
                    "Mobidrive",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text("Your Personal Storage system By Mobisystems"),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.all(1),
              color: Colors.white,
              child: GestureDetector(
                onTap: (() {
                  print("click 2");
                }),
                child: ListTile(
                  contentPadding: EdgeInsets.all(10),
                  minVerticalPadding: 10,
                  leading: Icon(size: 40, Icons.cloud_done_outlined),
                  title: Text(
                    "Add Cloud Account",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}  */

/********************************************* */

class settingroute extends StatefulWidget {
  const settingroute({super.key});

  @override
  State<settingroute> createState() => _settingrouteState();
}

class _settingrouteState extends State<settingroute> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Setting"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ListTile(
              leading: CircleAvatar(
                child: Icon(Icons.person),
                backgroundColor: Color.fromARGB(154, 255, 168, 197),
              ),
              title: Text("Person name"),
              subtitle: Text("Something About This"),
              trailing: Icon(Icons.check),
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
          ],
        ),
      ),
    );
  }
}
