import 'package:flutter/material.dart';

class TinderSwitch extends StatefulWidget {
  bool value;
  ValueChanged<bool> onChanged;

  TinderSwitch({this.value, this.onChanged});

  @override
  _TinderSwitchState createState() => _TinderSwitchState();
}

class _TinderSwitchState extends State<TinderSwitch>
    with SingleTickerProviderStateMixin {
  Animation _circleAnimation;
  AnimationController _animationController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _animationController =
        AnimationController(vsync: this, duration: Duration(milliseconds: 60));
    _circleAnimation = AlignmentTween(
            begin: widget.value ? Alignment.centerRight : Alignment.centerLeft,
            end: widget.value ? Alignment.centerLeft : Alignment.centerRight)
        .animate(CurvedAnimation(
            parent: _animationController, curve: Curves.linear));
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _animationController,
      builder: (context, child) {
        return GestureDetector(
          onTap: () {
            if (_animationController.isCompleted) {
              _animationController.reverse();
            } else {
              _animationController.forward();
            }
            widget.value == false
                ? widget.onChanged(true)
                : widget.onChanged(false);
          },
          child: Container(
            height: 30,
            width: 70,
            decoration: BoxDecoration(
              color: Colors.grey[200],
              borderRadius: BorderRadius.circular(35.0),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                _circleAnimation.value == Alignment.centerRight
                    ? Container(
                        padding: EdgeInsets.all(6),
                        child: Image.asset(
                          "assets/tinder.png",
                        ),
                      )
                    : Container(),
                Align(
                  alignment: _circleAnimation.value,
                  child: Container(
                    //margin: EdgeInsets.all(4),
                    padding: EdgeInsets.all(6),
                    height: 30,
                    width: 40,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30.0),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey[300],
                          offset: Offset(0.0, 1.0), //(x,y)
                          blurRadius: 6.0,
                        ),
                      ],
                    ),
                    child: _circleAnimation.value == Alignment.centerLeft
                        ? Image.asset(
                            "assets/tinder.png",
                          )
                        : Image.asset(
                            "assets/stars.png",
                          ),
                  ),
                ),
                _circleAnimation.value == Alignment.centerLeft
                    ? Container(
                        padding: EdgeInsets.all(6),
                        child: Image.asset(
                          "assets/stars.png",
                        ),
                      )
                    : Container(),
              ],
            ),
          ),
        );
      },
    );
  }
}
