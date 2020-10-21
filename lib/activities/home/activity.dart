import 'package:flamingo/activities/home/bestBook.dart';
import 'package:flamingo/activities/home/topBooks.dart';
import 'package:flutter/material.dart';

class HomeActivity extends StatefulWidget {
  @override
  _HomeActivityState createState() => _HomeActivityState();
}

class _HomeActivityState extends State<HomeActivity> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          child: Image(
            image: AssetImage("assets/images/background.png"),
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TopBooksWidget(),
            BestBookWidget(),
          ],
        ),
      ],
    );
  }
}
