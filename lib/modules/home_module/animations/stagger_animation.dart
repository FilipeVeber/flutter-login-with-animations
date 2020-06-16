import 'package:flutter/material.dart';
import 'package:flutter_login_with_animation/modules/home_module/widgets/home_top.dart';

import 'animated_list_view.dart';

class StaggerAnimation extends StatelessWidget {
  final AnimationController controller;

  StaggerAnimation({@required this.controller})
      : containerGrow = CurvedAnimation(parent: controller, curve: Curves.ease),
        listSlidePosition = EdgeInsetsTween(
                begin: EdgeInsets.only(bottom: 0),
                end: EdgeInsets.only(bottom: 80))
            .animate(CurvedAnimation(parent: controller, curve: Curves.ease));

  final Animation<double> containerGrow;
  final Animation<EdgeInsets> listSlidePosition;

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
    return ListView(
      padding: EdgeInsets.zero,
      children: <Widget>[
        HomeTop(containerGrow: containerGrow),
        AnimatedListView(listSlidePosition: listSlidePosition),
      ],
    );
  }
}
