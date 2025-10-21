import 'package:bazar/ui/models/book_model.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class Author {
  String name;
  String image;
  String genre;
  String description;
  RatingBarIndicator review;
  List<Book> book;

  Author({
    required this.name,
    required this.image,
    required this.genre,
    required this.description,
    required this.review,
    required this.book,
  });
}
