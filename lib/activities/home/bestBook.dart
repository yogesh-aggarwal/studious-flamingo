import 'package:flutter/material.dart';

class BestBookWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.only(left: 15, right: 15, bottom: 10),
            child: RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: "Best book of ",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 23,
                    ),
                  ),
                  TextSpan(
                    text: "day",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 23,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
