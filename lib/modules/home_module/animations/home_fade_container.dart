import 'package:flutter/material.dart';

class HomeFadeContainer extends StatelessWidget {
  final Animation<Color> fadeAnimation;

  HomeFadeContainer({@required this.fadeAnimation});

  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: "FADE",
      child: Container(
        decoration: BoxDecoration(color: this.fadeAnimation.value),
      ),
    );
  }
}
