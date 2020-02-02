import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_tinder_clone/account_tab.dart';
import 'package:flutter_tinder_clone/chat_tab.dart';
import 'swipe_functionality/tinder_swipe.dart';

class TinderHomepage extends StatefulWidget {
  @override
  _TinderHomepageState createState() => _TinderHomepageState();
}

class _TinderHomepageState extends State<TinderHomepage> {
  TabController _tabController;
  bool switchSelect = false;

  @override
  void initState() {
    super.initState();
  }

  Widget customSwitch({bool select}) {
    return (select == true)
        ? Transform.scale(
            scale: 2.0,
            child: Switch(
              value: switchSelect,
              onChanged: (value) {
                print(value);
                print(switchSelect);
                setState(() {
                  switchSelect = value;
                  print(switchSelect);
                });
              },
              activeThumbImage: AssetImage("assets/tinder.png"),
            ),
          )
        : ImageIcon(
            AssetImage("assets/tinder_grey.png"),
          );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'msc',
      home: new DefaultTabController(
        length: 3,
        child: new Scaffold(
          appBar: new AppBar(
            elevation: 2.0,
            backgroundColor: Colors.white,
            flexibleSpace: new Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                new TabBar(
                  indicator: BoxDecoration(color: Colors.transparent),
                  unselectedLabelColor: Colors.grey,
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
                      ),
//                      child: customSwitch(select: true),
                    ),
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
              TinderSwipe(),
              ChatTab(),
            ],
          ),
        ),
      ),
    );
  }
}
