import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_tinder_clone/addmedia/select_source.dart';

class AccountTab extends StatefulWidget {
  @override
  _AccountTabState createState() => _AccountTabState();
}

class _AccountTabState extends State<AccountTab> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery
            .of(context)
            .size
            .width,
        height: MediaQuery
            .of(context)
            .size
            .height,
        color: Colors.grey[100],
        child: Column(
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(86),
                    bottomRight: Radius.circular(86),
                  ),
                  color: Colors.white),
              width: MediaQuery
                  .of(context)
                  .size
                  .width,
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
                      Container(
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
                            SizedBox(height: 6,),
                            Text(
                              "SETTINGS",
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(0, 36, 0, 0),
                        child: Column(
                          children: <Widget>[
                            GestureDetector(
                              onTap: () {
                                Navigator.push(context, MaterialPageRoute(
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
                            SizedBox(height: 6,),
                            Text(
                              "ADD MEDIA",
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                      ),
                      Container(
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
                            SizedBox(height: 6,),
                            Text(
                              "EDIT INFO",
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 86,)
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
