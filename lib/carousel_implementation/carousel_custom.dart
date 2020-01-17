import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

//final List<String> imgList = [
//  'https://images.unsplash.com/photo-1520342868574-5fa3804e551c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=6ff92caffcdd63681a35134a6770ed3b&auto=format&fit=crop&w=1951&q=80',
//  'https://images.unsplash.com/photo-1522205408450-add114ad53fe?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=368f45b0888aeb0b7b08e3a1084d3ede&auto=format&fit=crop&w=1950&q=80',
//  'https://images.unsplash.com/photo-1519125323398-675f0ddb6308?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=94a1e718d89ca60a6337a6008341ca50&auto=format&fit=crop&w=1950&q=80',
//  'https://images.unsplash.com/photo-1523205771623-e0faa4d2813d?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=89719a0d55dd05e2deae4120227e6efc&auto=format&fit=crop&w=1953&q=80',
//  'https://images.unsplash.com/photo-1508704019882-f9cf40e475b4?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=8c6e5e3aba713b17aa1fe71ab4f0ae5b&auto=format&fit=crop&w=1352&q=80',
//  'https://images.unsplash.com/photo-1519985176271-adb1088fa94c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=a0c8d632e977f94e5d312d9893258f59&auto=format&fit=crop&w=1355&q=80'
//];

//void main() => runApp(CarouselDemo());

final Widget placeholder = Container(color: Colors.grey);

//final List child = map<Widget>(
//  imgList,
//  (index, i) {
//    return Container(
//      margin: EdgeInsets.all(5.0),
//      child: ClipRRect(
//        borderRadius: BorderRadius.all(Radius.circular(5.0)),
//        child: Stack(children: <Widget>[
//          Image.network(i, fit: BoxFit.cover, width: 1000.0),
//          Positioned(
//            bottom: 0.0,
//            left: 0.0,
//            right: 0.0,
//            child: Container(
//              decoration: BoxDecoration(
//                gradient: LinearGradient(
//                  colors: [
//                    Color.fromARGB(200, 0, 0, 0),
//                    Color.fromARGB(0, 0, 0, 0)
//                  ],
//                  begin: Alignment.bottomCenter,
//                  end: Alignment.topCenter,
//                ),
//              ),
//              padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
//              child: Text(
//                'No. $index image',
//                style: TextStyle(
//                  color: Colors.white,
//                  fontSize: 20.0,
//                  fontWeight: FontWeight.bold,
//                ),
//              ),
//            ),
//          ),
//        ]),
//      ),
//    );
//  },
//).toList();
//

List<T> map<T>(List list, Function handler) {
  List<T> result = [];
  for (var i = 0; i < list.length; i++) {
    result.add(handler(i, list[i]));
  }

  return result;
}

class CarouselWithIndicator1 extends StatefulWidget {
  @override
  _CarouselWithIndicator1State createState() => _CarouselWithIndicator1State();
}

class _CarouselWithIndicator1State extends State<CarouselWithIndicator1> {
  int _current = 0;

  Widget swipeWidgetText(image, upperText, [lowerText = ""]) {
    return Container(
      child: Column(
        children: <Widget>[
          SizedBox(
            height: 8,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.asset(
                image,
                width: 26,
                height: 26,
              ),
              SizedBox(
                width: 6,
              ),
              Text(
                upperText,
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 8,
          ),
          Text(
            lowerText,
            style: TextStyle(
              color: Colors.grey,
            ),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> yoFuck = [
      swipeWidgetText("assets/location_icon.png", "Swipe around the world!",
          "Passport to anywhere with tinder plus"),
      swipeWidgetText("assets/key_icon.png", "Control your profile",
          "Limit what other can see with Tinder Plus! "),
      swipeWidgetText("assets/reload_icon.png", "I mean't to swipe right",
          "Get Unlimited rewrad with tinder plus"),
      swipeWidgetText("assets/heart_icon.png", "Increase your Chances",
          "Get Unlimited likes with tinder plus! "),
    ];
    return Scaffold(
      appBar: AppBar(
        title: Text("fuck"),
      ),
      body: Column(children: [
        CarouselSlider(
          height: 50,
          items: yoFuck,
          autoPlay: true,
          enlargeCenterPage: true,
          //aspectRatio: 2.0,
          onPageChanged: (index) {
            setState(() {
              _current = index;
            });
          },
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: map<Widget>(
            yoFuck,
            (index, url) {
              return Container(
                width: 8.0,
                height: 8.0,
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: _current == index
                        ? Colors.blue
                        : Color.fromRGBO(0, 0, 0, 0.2)),
              );
            },
          ),
        ),
      ]),
    );
  }
}
