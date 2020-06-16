import 'package:flutter/material.dart';
import 'package:flutter_login_with_animation/modules/home_module/animations/home_fade_container.dart';
import 'package:flutter_login_with_animation/modules/home_module/widgets/home_top.dart';

import 'home_animated_list_view.dart';

class HomeStaggerAnimation extends StatelessWidget {
  final AnimationController controller;

  HomeStaggerAnimation({@required this.controller})
      : containerGrow = CurvedAnimation(parent: controller, curve: Curves.ease),
        listSlidePosition = EdgeInsetsTween(
                begin: EdgeInsets.only(bottom: 0),
                end: EdgeInsets.only(bottom: 80))
            .animate(CurvedAnimation(parent: controller, curve: Curves.ease)),
        fadeAnimation = ColorTween(
                begin: Color.fromRGBO(247, 64, 106, 1),
                end: Color.fromRGBO(247, 64, 106, 0))
            .animate(
                CurvedAnimation(parent: controller, curve: Curves.decelerate));

  final Animation<double> containerGrow;
  final Animation<EdgeInsets> listSlidePosition;
  final Animation<Color> fadeAnimation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: AnimatedBuilder(
          animation: controller,
          builder: _buildAnimation,
        ),
      ),
    );
  }

  Widget _buildAnimation(context, child) {
    return Stack(
      children: <Widget>[
        ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            HomeTop(containerGrow: containerGrow),
            HomeAnimatedListView(listSlidePosition: listSlidePosition),
          ],
        ),
        IgnorePointer(
          child: HomeFadeContainer(
            fadeAnimation: fadeAnimation,
          ),
        )
      ],
    );
  }
}
