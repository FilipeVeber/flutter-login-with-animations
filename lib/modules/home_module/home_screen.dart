import 'package:flutter/material.dart';

import 'file:///C:/Users/supero/Documents/Projects/flutter/udemy/animacoes/flutter_login_with_animation/lib/modules/home_module/animations/stagger_animation.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller =
        AnimationController(vsync: this, duration: Duration(seconds: 2));

    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return StaggerAnimation(
      controller: _controller,
    );
  }
}
