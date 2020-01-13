import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_tinder_clone/account_tab.dart';
import 'package:flutter_tinder_clone/chat_tab.dart';

class TinderHomepage extends StatefulWidget {
  @override
  _TinderHomepageState createState() => _TinderHomepageState();
}

class _TinderHomepageState extends State<TinderHomepage> {
  TabController _tabController;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'msc',
      home: new DefaultTabController(
        length: 3,
        child: new Scaffold(
          appBar: new AppBar(
            backgroundColor: Colors.white,
            flexibleSpace: new Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                new TabBar(unselectedLabelColor: Colors.grey,
                  labelColor: Colors.red[400],
                  tabs: [
                    new Tab(
                        icon: new ImageIcon(
                      AssetImage(
                        "assets/account_grey.png",
                      ),
                    )),
                    new Tab(
                        icon: ImageIcon(
                      AssetImage("assets/tinder_grey.png"),
                    )),
                    new Tab(
                        icon: ImageIcon(
                      AssetImage("assets/chat_icon.png"),
                    )),
                  ],
                ),
              ],
            ),
          ),
          body: TabBarView(
            children: <Widget>[
              AccountTab(),
              new Column(
                children: <Widget>[new Text("Cart Page")],
              ),
              ChatTab(),
            ],
          ),
        ),
      ),
    );
  }
}
