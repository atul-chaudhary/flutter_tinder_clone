import 'package:flutter/material.dart';

class SettingPage extends StatefulWidget {
  @override
  _SettingPageState createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {
  Widget tinderGold() {
    return Container(
      alignment: Alignment.center,
      decoration: BoxDecoration(color: Colors.white),
      child: Column(
        children: <Widget>[
          SizedBox(
            height: 6,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.asset(
                "assets/tinder_gold.png",
                width: 30,
                height: 30,
                fit: BoxFit.fill,
              ),
              SizedBox(
                width: 3,
              ),
              Text(
                "tinder",
                style: TextStyle(
                    color: Colors.grey[900],
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                    letterSpacing: -2.0),
              ),
              SizedBox(
                width: 4,
              ),
              Container(
                padding: EdgeInsets.all(4),
                decoration: BoxDecoration(color: Color(0xffD9B950)),
                child: Text(
                  "Gold",
                  style: TextStyle(color: Colors.white),
                ),
              )
            ],
          ),
          Text(
            "Unlock out most exclusive feature",
            style: TextStyle(color: Colors.grey, fontSize: 16),
          ),
          SizedBox(
            height: 6,
          )
        ],
      ),
    );
  }

  Widget tinderPlus() {
    return Container(
      alignment: Alignment.center,
      decoration: BoxDecoration(color: Colors.white),
      child: Column(
        children: <Widget>[
          SizedBox(
            height: 6,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.asset(
                "assets/tinder.png",
                width: 30,
                height: 30,
                fit: BoxFit.fill,
              ),
              SizedBox(
                width: 3,
              ),
              Text(
                "tinder",
                style: TextStyle(
                    color: Colors.grey[900],
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                    letterSpacing: -2.0),
              ),
              SizedBox(
                width: 4,
              ),
              Image.asset(
                "assets/add_icon.png",
                width: 20,
                height: 20,
              )
            ],
          ),
          Text(
            "Unlock out most exclusive feature",
            style: TextStyle(color: Colors.grey, fontSize: 16),
          ),
          SizedBox(
            height: 6,
          )
        ],
      ),
    );
  }

  Widget getBoost(){
    return Container(
      alignment: Alignment.center,
      padding: EdgeInsets.all(18),

    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: Container(
        margin: EdgeInsets.all(16),
        child: ListView(
          children: <Widget>[
            tinderGold(),
            SizedBox(
              height: 12,
            ),
            tinderPlus(),
          ],
        ),
      ),
    );
  }
}
