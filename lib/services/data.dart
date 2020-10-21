import 'package:flamingo/activities/book/types.dart';
import 'package:flamingo/services/types.dart';
import 'package:rxdart/subjects.dart';

BehaviorSubject<List<Book>> books = new BehaviorSubject.seeded([
  Book(
    name: "Python For Data Science",
    description: "Learn Python for Data Science",
    author: "Micheal",
    picture: BlurImage(
      hash: "L3RMPV{Li_Tx*y^QtlY500kqI:x^",
      url: "https://bit.ly/3jemQAK",
    ),
    rating: 4.7,
    chapters: [
      Chapter(
        name: "Index",
        description: "Book Index",
        url: "https://bit.ly/3oblNVC",
      ),
    ],
  ),
]);
