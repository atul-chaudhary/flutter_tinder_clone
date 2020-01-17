import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_tinder_clone/addmedia/select_source.dart';
import 'package:flutter_tinder_clone/carousel_implementation/carousel_custom.dart';
import 'package:flutter_tinder_clone/curve_container_account.dart';
import 'package:flutter_tinder_clone/editprofile/edit_profile_,main.dart';
import 'package:flutter_tinder_clone/editprofile/gridview_photos.dart';
import 'package:flutter_tinder_clone/settings/setting_main_page.dart';
import 'package:carousel_slider/carousel_slider.dart';

final Widget placeholder = Container(color: Colors.grey);

List<T> map<T>(List list, Function handler) {
  List<T> result = [];
  for (var i = 0; i < list.length; i++) {
    result.add(handler(i, list[i]));
  }

  return result;
}

class AccountTab extends StatefulWidget {
  @override
  _AccountTabState createState() => _AccountTabState();
}

class _AccountTabState extends State<AccountTab> {
  int _current = 0;

  Widget swipeWidgetText(image, upperText, [lowerText = ""]) {
    return Container(
      child: Column(
        children: <Widget>[
          SizedBox(
            height: 8,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.asset(
                image,
                width: 26,
                height: 26,
              ),
              SizedBox(
                width: 6,
              ),
              Text(
                upperText,
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 8,
          ),
          Text(
            lowerText,
            style: TextStyle(
              color: Colors.grey,
            ),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> yoFuck = [
      swipeWidgetText("assets/location_icon.png", "Swipe around the world!",
          "Passport to anywhere with tinder plus"),
      swipeWidgetText("assets/key_icon.png", "Control your profile",
          "Limit what other can see with Tinder Plus! "),
      swipeWidgetText("assets/reload_icon.png", "I mean't to swipe right",
          "Get Unlimited rewrad with tinder plus"),
      swipeWidgetText("assets/heart_icon.png", "Increase your Chances",
          "Get Unlimited likes with tinder plus! "),
    ];
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
                                          builder: (context) =>
                                              SelectSource()));
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
            ),
            SizedBox(
              height: 12,
            ),
            Container(
              child: Column(children: [
                CarouselSlider(
                  height: 70,
                  items: yoFuck,
                  autoPlay: true,
                  enlargeCenterPage: true,
                  //aspectRatio: 2.0,
                  onPageChanged: (index) {
                    setState(() {
                      _current = index;
                    });
                  },
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: map<Widget>(
                    yoFuck,
                    (index, url) {
                      return Container(
                        width: 8.0,
                        height: 8.0,
                        margin: EdgeInsets.symmetric(
                            vertical: 10.0, horizontal: 2.0),
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: _current == index
                                ? Colors.blue
                                : Color.fromRGBO(0, 0, 0, 0.2)),
                      );
                    },
                  ),
                ),
              ],),
            ),
            SizedBox(
              height: 8,
            ),
            Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  //shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(16)),
              padding: EdgeInsets.fromLTRB(26, 16, 26, 16),
              child: Text(
                "MY TINDER PLUS",
                style: TextStyle(
                    color: Colors.red[400],
                    fontWeight: FontWeight.bold,
                    fontSize: 18),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
