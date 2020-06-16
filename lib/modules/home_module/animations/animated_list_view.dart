import 'package:flutter/material.dart';
import 'package:flutter_login_with_animation/modules/home_module/widgets/home_list_data.dart';

class AnimatedListView extends StatelessWidget {
  final Animation<EdgeInsets> listSlidePosition;

  AnimatedListView({@required this.listSlidePosition});

  @override
  Widget build(BuildContext context) {
//    timeDilation = 1;
    return Stack(
      alignment: Alignment.bottomCenter,
      children: <Widget>[
        ListData(
          title: "Estudar Flutter 3",
          subtitle: "Estudar pela Udemy 3",
          image: AssetImage("images/perfil.jpg"),
          margin: this.listSlidePosition.value * 5,
        ),
        ListData(
          title: "Estudar Flutter 3",
          subtitle: "Estudar pela Udemy 3",
          image: AssetImage("images/perfil.jpg"),
          margin: this.listSlidePosition.value * 4,
        ),
        ListData(
          title: "Estudar Flutter 3",
          subtitle: "Estudar pela Udemy 3",
          image: AssetImage("images/perfil.jpg"),
          margin: this.listSlidePosition.value * 3,
        ),
        ListData(
          title: "Estudar Flutter 2",
          subtitle: "Estudar pela Udemy 2",
          image: AssetImage("images/perfil.jpg"),
          margin: this.listSlidePosition.value * 2,
        ),
        ListData(
          title: "Estudar Flutter",
          subtitle: "Estudar pela Udemy",
          image: AssetImage("images/perfil.jpg"),
          margin: this.listSlidePosition.value * 1,
        ),
        ListData(
          title: "Estudar Flutter 2",
          subtitle: "Estudar pela Udemy 2",
          image: AssetImage("images/perfil.jpg"),
          margin: this.listSlidePosition.value * 0,
        ),
      ],
    );
  }
}
