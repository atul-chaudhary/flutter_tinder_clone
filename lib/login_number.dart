import 'package:flutter/material.dart';

class LoginNumber extends StatefulWidget {
  final String _countryCode;
  final String _countryName;

  LoginNumber(this._countryCode, this._countryName);

  @override
  _LoginNumberState createState() => _LoginNumberState();
}

class _LoginNumberState extends State<LoginNumber> {
  final phoneNumberController = TextEditingController();
  bool _validate = false;
  bool _gradientForButton = false;

  String countryInfo({code, name}) {
    if (code != null && name != null) {
      String fullInfo = name + " " + code;
      return fullInfo;
    }
    return "select country code";
  }

  bool validateMobile(String value) {
    String pattern = r'(^(?:[+0]9)?[0-9]{10,12}$)';
    RegExp regExp = new RegExp(pattern);
    if (value.length == 0) {
      return false;
    } else if (!regExp.hasMatch(value)) {
      return false;
    }
    return true;
  }

  @override
  void dispose() {
    phoneNumberController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Locale myLocale = Localizations.localeOf(context);

    return Scaffold(
      body: Column(
        //mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          SafeArea(
            child: GestureDetector(
              onTap: (){
                Navigator.pop(context);
              },
              child: Container(
                //color: Colors.grey,
                margin: EdgeInsets.all(20.0),
                child: Icon(
                  Icons.arrow_back,
                  color: Colors.red[400],
                ),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.all(36),
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  "My number is",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                      color: Colors.grey[700],
                      fontSize: 36,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 26,
                ),
                Row(
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.only(
                        bottom: 4, // space between underline and text
                      ),
                      decoration: BoxDecoration(
                          border: Border(
                              bottom: BorderSide(
                        color: Colors.grey, // line  colour here
                        width: 1.0, // Underline width
                      ))),
                      child: Row(
                        children: <Widget>[
                          Text(
                            " IN +91 ",
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.black, // Text colour here
                            ),
                          ),
                          Icon(
                            Icons.arrow_drop_down,
                            color: Colors.grey,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 26,
                    ),
                    Container(
                      //margin: EdgeInsets.fromLTRB(0, 0, 36, 0),
                      width: 120,
                      child: TextField(
                        controller: phoneNumberController,
                        onEditingComplete: () {
                          if (validateMobile(
                                  "+91" + phoneNumberController.text) ==
                              true) {
                            setState(() {
                              _gradientForButton = true;
                            });
                          } else {
                            _gradientForButton = false;
                            _validate = true;
                            setState(() {});
                          }
                        },
                        onSubmitted: (v) {
                          print(v);
                          if (validateMobile(
                                  "+91" + phoneNumberController.text) ==
                              true) {
                            setState(() {
                              _gradientForButton = true;
                            });
                          } else {
                            _gradientForButton = false;
                            _validate = true;
                            setState(() {});
                          }
                        },
                        //maxLength: 10,
                        maxLines: 1,
                        minLines: 1,
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                            errorText: _validate ? 'Enter Valid Number' : null,
                            //labelText: "Phone number",
                            hintText: "Phone number",
                            contentPadding: EdgeInsets.all(5),
                            isDense: true,
                            enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.grey)),
                            focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.red[400]))
                            //border: InputBorder.none
                            ),
                      ),
                    ),
                    //container for next button phone number
                  ],
                ),
                SizedBox(
                  height: 36,
                ),
                GestureDetector(
                  onTap: () {
                    if(_gradientForButton==true){
                      //Navigator.push(context, MaterialPageRoute(builder: null));
                    }
                  },
                  child: Container(
                    //width: double.infinity,
                    //height: double.infinity,
                    alignment: Alignment.center,
                    padding: EdgeInsets.fromLTRB(0, 16, 0, 16),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(26),
                        gradient: _gradientForButton
                            ? LinearGradient(
                                colors: [
                                  Color.fromRGBO(253, 41, 123, 1),
                                  Color.fromRGBO(255, 88, 100, 1),
                                  Color.fromRGBO(255, 101, 91, 1)
                                ],
                                begin: Alignment.centerLeft,
                                end: Alignment.centerRight,
                              )
                            : LinearGradient(
                                colors: [Colors.grey[400], Colors.grey[200]],
                                end: Alignment.centerRight,
                                begin: Alignment.centerLeft)),
                    child: Text(
                      "CONTINUE",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 16),
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
