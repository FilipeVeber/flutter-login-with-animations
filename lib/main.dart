import 'package:flutter/material.dart';

import 'modules/login_module/login_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "Login with animations",
        debugShowCheckedModeBanner: false,
        home: LoginScreen());
  }
}
