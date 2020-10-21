import 'package:flutter/material.dart';

class IntroActivity extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: [
          Image(
            image: AssetImage("assets/images/intro.png"),
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  margin: EdgeInsets.only(bottom: 10),
                  child: RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(children: [
                      TextSpan(
                        text: "flamin",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 50,
                        ),
                      ),
                      TextSpan(
                        text: "go.",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 50,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ]),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 30,
                        color: Color(0xFFEEEEEE),
                      )
                    ],
                  ),
                  child: RawMaterialButton(
                    onPressed: () {},
                    fillColor: Colors.white,
                    padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: Text("start reading"),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
