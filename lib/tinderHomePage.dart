import 'dart:ui';

import 'package:flutter/material.dart';

class TinderHomepage extends StatefulWidget {
  @override
  _TinderHomepageState createState() => _TinderHomepageState();
}

class _TinderHomepageState extends State<TinderHomepage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'msc',
        home: new DefaultTabController(
          length: 3,
          child: new Scaffold(
            appBar: new AppBar(
              backgroundColor: Colors.white,
              elevation: 12,
              flexibleSpace: new Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  new TabBar(
                    tabs: [
                      new Tab(
                        icon: Image.asset(
                          "assets/account_grey.png",
                          width: 26,
                          height: 26,
                        ),
                      ),
                      new Tab(
                        icon: Image.asset(
                          "assets/tinder_grey.png",
                          width: 26,
                          height: 26,
                        ),
                      ),
                      new Tab(
                        icon: Image.asset(
                          "assets/chat_icon.png",
                          width: 26,
                          height: 26,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            body: TabBarView(children: [
              new Column(
                children: <Widget>[new Text("Lunches Page")],
              ),
              new Column(
                children: <Widget>[new Text("Cart Page")],
              ),
              new Column(
                children: <Widget>[new Text("Cart Page")],
              )
            ]),
          ),
        ));
  }
}
