import 'package:bazar/ui/common/app_colors.dart';
import 'package:bazar/ui/models/book_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:uuid/uuid.dart';

const uuid = Uuid();

class BookService {
  final List<Book> _books = [
    Book(
      id: uuid.v4(),
      authorName: "J.K Rowling",
      title: "Harry Potter",
      description:
          "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here'",
      image:
          "assets/img/Harry_Potter_and_the_Cursed_Child_Special_Rehearsal_Edition_Book_Cover.jpg",
      review: RatingBarIndicator(
        itemBuilder: (context, _) => const Icon(
          Icons.star_rate_rounded,
          color: orange,
        ),
        itemCount: 5,
        rating: 4.2,
        itemSize: 30,
        unratedColor: Colors.black87,
      ),
      category: "fiction",
      price: 14.99,
      vendor: "assets/img/Frame (1).png",
    ),

    //
    Book(
      id: uuid.v4(),
      authorName: "Louise Penny",
      title: "A Great Reckoning",
      description:
          "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here'",
      image: "assets/img/greatreckoning.jpg",
      review: RatingBarIndicator(
        itemBuilder: (context, _) => const Icon(
          Icons.star_rate_rounded,
          color: orange,
        ),
        itemCount: 5,
        rating: 4,
        itemSize: 30,
        unratedColor: Colors.black87,
      ),
      category: "Novel",
      price: 20.99,
      vendor: "assets/img/Frame (2).png",
    ),

    //
    Book(
      id: uuid.v4(),
      authorName: "Laiane Moriartv",
      title: "Truely Madly Guilty",
      description:
          "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here'",
      image: "assets/img/0726_truly-madly-cover.jpg",
      review: RatingBarIndicator(
        itemBuilder: (context, _) => const Icon(
          Icons.star_rate_rounded,
          color: orange,
        ),
        itemCount: 5,
        rating: 4.2,
        itemSize: 30,
        unratedColor: Colors.black87,
      ),
      category: "Novel",
      price: 14.99,
      vendor: "assets/img/Frame (3).png",
    ),

    //
    Book(
      id: uuid.v4(),
      authorName: "Paula Hawkins",
      title: "The Girl on the Train",
      description:
          "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here'",
      image: "assets/img/girlonthetrain.jpg",
      review: RatingBarIndicator(
        itemBuilder: (context, _) => const Icon(
          Icons.star_rate_rounded,
          color: orange,
        ),
        itemCount: 5,
        rating: 4.2,
        itemSize: 30,
        unratedColor: Colors.black87,
      ),
      category: "fiction",
      price: 10.99,
      vendor: "assets/img/Frame (1).png",
    ),
  ];

  List<Book> get books => _books;
}
