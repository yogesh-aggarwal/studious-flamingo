import 'package:flamingo/activities/home/activity.dart';
// import 'package:flamingo/activities/intro/activity.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(Main());
}

class Main extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: "Poppins",
      ),
      home: Scaffold(
        body: SafeArea(
          child: Flamingo(),
        ),
      ),
    );
  }
}

class Flamingo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return HomeActivity();
  }
}
