import 'package:flutter/material.dart';

class SelectSource extends StatefulWidget {
  @override
  _SelectSourceState createState() => _SelectSourceState();
}

class _SelectSourceState extends State<SelectSource> {
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
            ListTile(
              leading: CircleAvatar(
                radius: 30,
                backgroundColor: Colors.grey[100],
                child: Icon(Icons.camera_alt,color: Colors.grey,),
              ),
              title: Text(
                'Camera',
                style:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
              ),
            ),
            Divider(),
            ListTile(
              leading: CircleAvatar(
                radius: 30,
                backgroundColor: Colors.grey[100],
                child: Icon(Icons.photo,color: Colors.grey,),
              ),
              title: Text(
                'Gallery',
                style:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
              ),
            ),
            Divider(),
          ],
        ),
      ),
    );
  }
}
