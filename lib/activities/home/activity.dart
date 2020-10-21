import 'package:flamingo/activities/book/types.dart';
import 'package:flamingo/activities/home/bookCard.dart';
import 'package:flamingo/services/data.dart';
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
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.only(left: 15, right: 15, top: 30),
              child: RichText(
                text: TextSpan(children: [
                  TextSpan(
                    text: "What are you reading ",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 30,
                    ),
                  ),
                  TextSpan(
                    text: "today?",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 30,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ]),
              ),
            ),
            StreamBuilder<List<Book>>(
              stream: books.stream,
              builder: (context, snapshot) {
                if (!snapshot.hasData) return Container();

                List<Book> books = snapshot.data;
                return SizedBox(
                  height: MediaQuery.of(context).size.width * .55 + 60,
                  width: MediaQuery.of(context).size.width,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    physics: BouncingScrollPhysics(),
                    itemCount: books.length,
                    itemBuilder: (context, index) {
                      return BookCard(book: books[index]);
                    },
                  ),
                );
              },
            ),
          ],
        ),
      ],
    );
  }
}
