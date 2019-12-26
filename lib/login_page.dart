import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color.fromRGBO(253, 41, 123, 1),
            Color.fromRGBO(255, 88, 100, 1),
            Color.fromRGBO(255, 101, 91, 1)
          ],
          begin: Alignment.bottomLeft,
          end: Alignment.topRight,
        ),
      ),
    ));
  }
}
