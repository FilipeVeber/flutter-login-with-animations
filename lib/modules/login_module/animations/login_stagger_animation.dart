import 'package:flutter/material.dart';

class LoginStaggerAnimation extends StatelessWidget {
  final AnimationController controller;

  LoginStaggerAnimation({this.controller})
      : buttonSqueeze = Tween<double>(begin: 290, end: 60).animate(
            CurvedAnimation(parent: controller, curve: Interval(0, 0.150))),
        buttonZoomOut = Tween<double>(begin: 60, end: 1000).animate(
            CurvedAnimation(
                parent: controller,
                curve: Interval(0.5, 1, curve: Curves.bounceOut)));

  final Animation<double> buttonSqueeze;
  final Animation<double> buttonZoomOut;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      builder: _buildAnimation,
      animation: controller,
    );
  }

  Widget _buildAnimation(context, child) {
    return Padding(
      padding: EdgeInsets.only(bottom: 50),
      child: InkWell(
        child: Hero(
          tag: "FADE",
          child: buttonZoomOut.value == 60
              ? Container(
                  width: buttonSqueeze.value,
                  height: 60,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      color: Color.fromRGBO(247, 64, 106, 1),
                      borderRadius: BorderRadius.all(Radius.circular(30))),
                  child: _buildInside(context),
                )
              : Container(
                  width: buttonZoomOut.value,
                  height: buttonZoomOut.value,
                  decoration: BoxDecoration(
                      color: Color.fromRGBO(247, 64, 106, 1),
                      shape: buttonZoomOut.value < 300
                          ? BoxShape.circle
                          : BoxShape.rectangle),
                ),
        ),
        onTap: () {
          controller.forward();
        },
      ),
    );
  }

  Widget _buildInside(context) {
    if (buttonSqueeze.value > 75) {
      return Text(
        "Sign in",
        style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.w300,
            letterSpacing: 0.3),
      );
    } else {
      return CircularProgressIndicator(
        valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
        strokeWidth: 2,
      );
    }
  }
}
