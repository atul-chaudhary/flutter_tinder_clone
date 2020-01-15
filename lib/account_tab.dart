import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_tinder_clone/addmedia/select_source.dart';
import 'package:flutter_tinder_clone/curve_container_account.dart';
import 'package:flutter_tinder_clone/editprofile/edit_profile_,main.dart';
import 'package:flutter_tinder_clone/editprofile/gridview_photos.dart';
import 'package:flutter_tinder_clone/settings/setting_main_page.dart';

class AccountTab extends StatefulWidget {
  @override
  _AccountTabState createState() => _AccountTabState();
}

class _AccountTabState extends State<AccountTab> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: Colors.grey[100],
        child: Column(
          children: <Widget>[
            ClipPath(
              clipper: CurvedBottomClipper(),
              child: Container(
                decoration: BoxDecoration(
                  //shape: BoxShape.rectangle,
//                    borderRadius: BorderRadius.only(
//                      bottomLeft: Radius.circular(120),
//                      bottomRight: Radius.circular(120),
//                    ),
                    color: Colors.white,
                ),
                width: MediaQuery.of(context).size.width,
                child: Column(
                  children: <Widget>[
                    SizedBox(
                      height: 16,
                    ),
                    CircleAvatar(
                      radius: 60,
                      backgroundImage: AssetImage("assets/photo.jpg"),
                      backgroundColor: Colors.transparent,
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Text(
                      "Atul Chaudhary, 21",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 21,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => SettingPage()));
                          },
                          child: Container(
                            child: Column(
                              children: <Widget>[
                                Container(
                                  padding: EdgeInsets.all(20),
                                  decoration: BoxDecoration(
                                    color: Colors.grey[200],
                                    shape: BoxShape.circle,
                                    //borderRadius: BorderRadius.only()
                                  ),
                                  child: Image.asset(
                                    "assets/setting_icon.png",
                                    width: 30,
                                    height: 30,
                                  ),
                                ),
                                SizedBox(
                                  height: 6,
                                ),
                                Text(
                                  "SETTINGS",
                                  style: TextStyle(
                                      color: Colors.grey,
                                      fontWeight: FontWeight.bold),
                                )
                              ],
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(0, 36, 0, 0),
                          child: Column(
                            children: <Widget>[
                              GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => SelectSource()));
                                },
                                child: Container(
                                  padding: EdgeInsets.all(20),
                                  decoration: BoxDecoration(
                                    color: Colors.grey[200],
                                    shape: BoxShape.circle,
                                    gradient: LinearGradient(
                                      colors: [
                                        Color.fromRGBO(253, 41, 123, 1),
                                        Color.fromRGBO(255, 88, 100, 1),
                                        Color.fromRGBO(255, 101, 91, 1)
                                      ],
                                      begin: Alignment.bottomLeft,
                                      end: Alignment.topRight,
                                    ),
                                    //borderRadius: BorderRadius.only()
                                  ),
                                  child: Image.asset(
                                    "assets/camera_icon.png",
                                    width: 30,
                                    height: 30,
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 6,
                              ),
                              Text(
                                "ADD MEDIA",
                                style: TextStyle(
                                    color: Colors.grey,
                                    fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => EditProfile()));
                          },
                          child: Container(
                            child: Column(
                              children: <Widget>[
                                Container(
                                  padding: EdgeInsets.all(20),
                                  decoration: BoxDecoration(
                                    color: Colors.grey[200],
                                    shape: BoxShape.circle,
                                    //borderRadius: BorderRadius.only()
                                  ),
                                  child: Image.asset(
                                    "assets/edit_icon.png",
                                    width: 30,
                                    height: 30,
                                  ),
                                ),
                                SizedBox(
                                  height: 6,
                                ),
                                Text(
                                  "EDIT INFO",
                                  style: TextStyle(
                                      color: Colors.grey,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 86,
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
