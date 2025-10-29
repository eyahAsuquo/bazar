import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class Book {
  String id;
  String authorName;
  String title;
  String description;
  String image;
  RatingBarIndicator review;
  String category;
  double price;
  String? vendor;

  Book({
    required this.id,
    required this.authorName,
    required this.title,
    required this.description,
    required this.image,
    required this.review,
    required this.category,
    required this.price,
    this.vendor,
  });
}
