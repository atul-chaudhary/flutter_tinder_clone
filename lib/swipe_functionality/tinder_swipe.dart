import 'package:flutter/material.dart';
import './profile_item.dart';
//import 'package:tinder_card/tinder_card.dart';
//import 'package:flutter_tindercard/flutter_tindercard.dart';
import 'package:flutter_tinder_clone/tinder_cards/tinder_card.dart';
class TinderSwipe extends StatefulWidget {
  @override
  _TinderSwipeState createState() => _TinderSwipeState();
}

class _TinderSwipeState extends State<TinderSwipe>
    with TickerProviderStateMixin {
  //dummy data
  final List<Profile> demoProfiles = [
    new Profile(
      photos: [
        "assets/1.jpg",
        "assets/2.jpg",
        "assets/3.jpg",
        "assets/1.jpg",
        "assets/2.jpg",
        "assets/3.jpg",
      ],
      name: "Ansh mathey",
      bio: "This is the person you want",
    ),
    new Profile(
      photos: [
        "assets/5.jpg",
        "assets/6.jpg",
      ],
      name: "Amanda Tylor",
      bio: "You better swpe left",
    ),
    new Profile(
      photos: [
        "assets/7.jpeg",
        "assets/8.jpeg",
      ],
      name: "Godson Mathew",
      bio: "You better swpe left",
    ),
    new Profile(
      photos: [
        "assets/9.jpeg",
        "assets/10.jpeg",
        "assets/9.jpeg",
        "assets/10.jpeg",
      ],
      name: "Godson Mathew",
      bio: "You better swpe left",
    ),
  ];

  List<String> welcomeImages = [
    "assets/1.jpg",
    "assets/2.jpg",
    "assets/3.jpg",
    "assets/1.jpg",
    "assets/2.jpg",
    "assets/3.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: TinderSwapCard(
        demoProfiles: demoProfiles,
        myCallback: (decision) {},
      ),
    );
  }
}
