import 'package:flamingo/activities/book/types.dart';
import 'package:flutter/material.dart';
import 'package:flutter_blurhash/flutter_blurhash.dart';

class BookCard extends StatelessWidget {
  final Book book;

  BookCard({@required this.book});

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width * .55;
    final double height = MediaQuery.of(context).size.width * .55;
    final double borderRadius = 30;
    final EdgeInsets padding = EdgeInsets.symmetric(horizontal: 10);

    return Container(
        width: width,
        height: height,
        margin: EdgeInsets.symmetric(horizontal: 10),
        decoration: BoxDecoration(
          color: Colors.grey[200],
          borderRadius: BorderRadius.circular(borderRadius),
        ),
        child: Stack(
          children: [
            Positioned(
              top: -20,
              child: SizedBox(
                width: width - 70,
                height: height - 95,
                child: BlurHash(
                  hash: book.picture.hash,
                  image: book.picture.url,
                  imageFit: BoxFit.cover,
                ),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: padding,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Column(
                        children: [
                          IconButton(
                            icon: Icon(Icons.favorite_border),
                            onPressed: () {},
                          ),
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(50),
                            ),
                            padding: EdgeInsets.symmetric(
                                horizontal: 7, vertical: 10),
                            child: Column(
                              children: [
                                Icon(
                                  Icons.star,
                                  color: Colors.yellow[800],
                                  size: 15,
                                ),
                                Text(
                                  book.rating.toString(),
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w600,
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 10),
                  padding: padding,
                  child: Text(
                    book.name,
                    style: TextStyle(fontWeight: FontWeight.w600),
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 1),
                  padding: padding,
                  child: Text(
                    book.name,
                    style: TextStyle(
                      fontSize: 10,
                      fontWeight: FontWeight.w600,
                      color: Colors.grey[600],
                    ),
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 13),
                  child: Row(
                    children: [
                      Expanded(
                        child: SizedBox(
                          width: 88,
                          height: 36,
                          child: RawMaterialButton(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.only(
                                topRight: Radius.circular(borderRadius),
                                bottomLeft: Radius.circular(borderRadius),
                              ),
                            ),
                            onPressed: () {},
                            child: Text("Details"),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 88,
                        height: 36,
                        child: RawMaterialButton(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(borderRadius),
                              bottomRight: Radius.circular(borderRadius),
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
                )
              ],
            ),
          ],
        ));
  }
}
