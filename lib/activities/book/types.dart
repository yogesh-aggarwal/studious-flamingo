import 'package:flamingo/services/types.dart';
import 'package:flutter/foundation.dart';

class Chapter {
  final String name;
  final String description;
  final String url;

  Chapter({
    @required this.name,
    @required this.description,
    @required this.url,
  });
}

class Book {
  final String name;
  final String description;
  final String author;
  final double rating;
  final BlurImage picture;
  final List<Chapter> chapters;

  Book({
    @required this.name,
    @required this.description,
    @required this.author,
    @required this.rating,
    @required this.picture,
    @required this.chapters,
  });
}
