import 'package:flutter/material.dart';

class BestBookCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.all(Radius.circular(40)),
      ),
      margin: EdgeInsets.symmetric(horizontal: 15),
      padding: EdgeInsets.all(25),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "New York Times",
                  overflow: TextOverflow.clip,
                  style: TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.w700,
                    fontSize: 12,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 10),
                  child: Text(
                    "How to win friends & Influence",
                    overflow: TextOverflow.clip,
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 22,
                    ),
                  ),
                ),
                Text(
                  "Micheal",
                  overflow: TextOverflow.clip,
                  style: TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.w700,
                    fontSize: 17,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 10),
                  child: Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(right: 10),
                        padding: EdgeInsets.symmetric(
                          horizontal: 5,
                          vertical: 8,
                        ),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(40)),
                        ),
                        child: Column(
                          children: [
                            Icon(Icons.favorite_border),
                            Container(
                              margin: EdgeInsets.only(top: 2),
                              child: Text("4.9"),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Text(
                          "How to win friends & Influence How to win friends & Influence How to win friends & Influence",
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 12,
                            fontWeight: FontWeight.w700,
                          ),
                          overflow: TextOverflow.clip,
                          maxLines: 2,
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image(
                width: 100,
                height: 100,
                image: AssetImage("assets/images/book.png"),
              ),
              SizedBox(
                width: 88,
                height: 36,
                child: RawMaterialButton(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      bottomRight: Radius.circular(20),
                    ),
                  ),
                  highlightColor: Colors.black45,
                  fillColor: Colors.black,
                  onPressed: () {},
                  child: Text(
                    "Read",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

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
          BestBookCard(),
        ],
      ),
    );
  }
}
