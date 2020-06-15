import 'package:flutter/material.dart';
import 'package:flutter_login_with_animation/modules/home_module/widgets/home_top.dart';

class StaggerAnimation extends StatelessWidget {
  final AnimationController controller;

  StaggerAnimation({@required this.controller})
      : containerGrow = CurvedAnimation(parent: controller, curve: Curves.ease);

  final Animation<double> containerGrow;

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
      ],
    );
  }
}
