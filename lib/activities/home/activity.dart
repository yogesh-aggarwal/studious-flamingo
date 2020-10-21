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
    return Container(
      child: Column(
        children: [
          BookCard(book: books.value[0])
          // Expanded(
          //   child: StreamBuilder<List<Book>>(
          //     stream: books.stream,
          //     builder: (context, snapshot) {
          //       if (!snapshot.hasData) return Container();

          //       List<Book> books = snapshot.data;
          //       return ListView.builder(
          //         scrollDirection: Axis.horizontal,
          //         shrinkWrap: true,
          //         physics: BouncingScrollPhysics(),
          //         itemCount: books.length,
          //         itemBuilder: (context, index) {
          //           return BookCard(book: books[index]);
          //         },
          //       );
          //     },
          //   ),
          // ),
        ],
      ),
    );
  }
}
