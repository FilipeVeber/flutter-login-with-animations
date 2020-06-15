import 'package:flutter/material.dart';

class StaggerAnimation extends StatelessWidget {
  final AnimationController controller;

  StaggerAnimation({this.controller});

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
        child: Container(
          width: 320,
          height: 60,
          alignment: Alignment.center,
          decoration: BoxDecoration(
              color: Color.fromRGBO(247, 64, 106, 1),
              borderRadius: BorderRadius.all(Radius.circular(30))),
          child: Text(
            "Sign in",
            style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.w300,
                letterSpacing: 0.3),
          ),
        ),
        onTap: () {},
      ),
    );
  }
}
