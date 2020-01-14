import 'package:flutter/material.dart';
import 'package:flutter_tinder_clone/addmedia/access_gallery.dart';
import 'dart:io';
import 'dart:async';
import './access_camera.dart';

class SelectSource extends StatefulWidget {
  @override
  _SelectSourceState createState() => _SelectSourceState();
}

class _SelectSourceState extends State<SelectSource> {
  //in your code
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.red[400],
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text(
          "Select Source",
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
      ),
      body: Container(
        margin: EdgeInsets.fromLTRB(0, 8, 0, 0),
        child: ListView(
          children: <Widget>[
            GestureDetector(
              onTap: () async {
                print("camera button");
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => AccessCamera()));
              },
              child: ListTile(
                leading: CircleAvatar(
                  radius: 30,
                  backgroundColor: Colors.grey[100],
                  child: Icon(
                    Icons.camera_alt,
                    color: Colors.grey,
                  ),
                ),
                title: Text(
                  'Camera',
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Divider(),
            GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => AccessGallery()));
              },
              child: ListTile(
                leading: CircleAvatar(
                  radius: 30,
                  backgroundColor: Colors.grey[100],
                  child: Icon(
                    Icons.photo,
                    color: Colors.grey,
                  ),
                ),
                title: Text(
                  'Gallery',
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Divider(),
          ],
        ),
      ),
    );
  }
}
