import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SettingPage extends StatefulWidget {
  @override
  _SettingPageState createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {
  double rating = 19.0;

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
            style: TextStyle(
              color: Colors.grey,
              fontSize: 16,
            ),
          ),
          SizedBox(
            height: 6,
          )
        ],
      ),
    );
  }

  Widget getBoost(icon, text, textColor, size, boxSize) {
    return Container(
      width: MediaQuery.of(context).size.width / 2 - 26,
      decoration: BoxDecoration(color: Colors.white),
      alignment: Alignment.center,
      padding: EdgeInsets.all(18),
      child: Column(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Color.fromRGBO(253, 253, 252, 1.0),
                  blurRadius: 6.0,
                )
              ],
            ),
            child: Image.asset(
              icon,
              width: size,
              height: size,
            ),
          ),
          SizedBox(
            height: boxSize,
          ),
          Text(
            text,
            style: TextStyle(color: textColor, fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }

  Widget textField({hintText, left, right, top, bottom}) {
    return TextField(
      maxLength: 500,
      style: TextStyle(
          //color: Colors.white
          ),
      keyboardType: TextInputType.text,
      decoration: InputDecoration(
          filled: true,
          fillColor: Colors.white,
          hintText: hintText,
          contentPadding: EdgeInsets.fromLTRB(left, top, right, bottom),
          isDense: true,
          enabledBorder:
              UnderlineInputBorder(borderSide: BorderSide(color: Colors.white)),
          focusedBorder:
              UnderlineInputBorder(borderSide: BorderSide(color: Colors.white))
          //border: InputBorder.none
          ),
    );
  }

  Widget headingsForTextField({
    text,
    left,
    top,
    right,
    bottom,
  }) {
    return Container(
      margin: EdgeInsets.fromLTRB(left, top, right, bottom),
      child: Text(
        text,
        style: TextStyle(
          color: Colors.black,
          fontSize: 16,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  Widget textField1({hintText, left, right, top, bottom}) {
    return TextField(
      style: TextStyle(
          //color: Colors.white
          ),
      keyboardType: TextInputType.text,
      decoration: InputDecoration(
          filled: true,
          fillColor: Colors.white,
          hintText: hintText,
          contentPadding: EdgeInsets.fromLTRB(left, top, right, bottom),
          isDense: true,
          enabledBorder:
              UnderlineInputBorder(borderSide: BorderSide(color: Colors.white)),
          focusedBorder:
              UnderlineInputBorder(borderSide: BorderSide(color: Colors.white))
          //border: InputBorder.none
          ),
    );
  }

  Widget interestInSex() {
    return Container(
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        color: Colors.white,
      ),
      padding: EdgeInsets.all(12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            "Show Me",
            style: TextStyle(
              color: Colors.red[400],
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),
          ),
          SizedBox(
            height: 6,
          ),
          Text(
            "Women",
            style: TextStyle(color: Colors.grey, fontSize: 16),
          )
        ],
      ),
    );
  }

  Widget maximumDistance() {
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.fromLTRB(16, 16, 16, 4),
      decoration: BoxDecoration(color: Colors.white),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                "Maximum Distance",
                style: TextStyle(
                    color: Colors.red[400],
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                "${rating.round()} km.",
                style: TextStyle(color: Colors.black),
              )
            ],
          ),
          Slider(
            value: rating,
            onChanged: (newRating) {
              setState(() {
                rating = newRating;
              });
            },
            min: 18,
            max: 55,
            activeColor: Colors.red[400],
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
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
          "Settings",
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
      ),
      body: Container(
        margin: EdgeInsets.all(16),
        child: ListView(
          children: <Widget>[
            tinderGold(),
            SizedBox(
              height: 12,
            ),
            tinderPlus(),
            SizedBox(
              height: 12,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                getBoost("assets/lightining_icon.png", "Get Boost",
                    Colors.purpleAccent, 36.0, 8.0),
                getBoost("assets/star_icon.png", "Get Super Like", Colors.blue,
                    26.0, 18.0)
              ],
            ),
            headingsForTextField(
              text: "Account Settings",
              left: 0.0,
              top: 20.0,
              right: 0.0,
              bottom: 12.0,
            ),
            textField1(
              hintText: "Phone Number",
              right: 16.0,
              top: 16.0,
              left: 16.0,
              bottom: 16.0,
            ),
            SizedBox(
              height: 6,
            ),
            Text(
              "Verify a phone number to help secure your account.",
              style: TextStyle(color: Colors.grey),
            ),
            headingsForTextField(
              text: "Discovery Settings",
              left: 0.0,
              top: 20.0,
              right: 0.0,
              bottom: 12.0,
            ),
            textField1(
              hintText: "Enter Location",
              right: 16.0,
              top: 16.0,
              left: 16.0,
              bottom: 16.0,
            ),
            SizedBox(
              height: 6,
            ),
            Text(
              "Change your location to see Tinder Member in other location Cities",
              style: TextStyle(color: Colors.grey),
            ),
            SizedBox(
              height: 16,
            ),
            interestInSex(),
            SizedBox(
              height: 16,
            ),
            maximumDistance(),
          ],
        ),
      ),
    );
  }
}
