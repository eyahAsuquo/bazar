import 'package:bazar/ui/common/app_colors.dart';
import 'package:bazar/ui/models/author_model.dart';
import 'package:bazar/ui/models/book_model.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stacked/stacked.dart';
import 'package:uuid/uuid.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

var uuid = const Uuid();

class HomeViewModel extends BaseViewModel {
  List<Book> books = [
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
          Icons.star,
          color: orange,
        ),
        itemCount: 5,
        rating: 4.2,
      ),
      category: "fiction",
      price: 14.99,
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
          Icons.star,
          color: orange,
        ),
        itemCount: 5,
        rating: 4,
      ),
      category: "Novel",
      price: 20.99,
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
          Icons.star,
          color: orange,
        ),
        itemCount: 5,
        rating: 4.2,
      ),
      category: "Novel",
      price: 14.99,
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
          Icons.star,
          color: orange,
        ),
        itemCount: 5,
        rating: 4.2,
      ),
      category: "fiction",
      price: 10.99,
    ),
  ];

  List<Author> get authors => [
        Author(
          name: "J.K. Rowling",
          image: "assets/img/J-K-Rowling-2017-Harry-Potter-author.jpg",
          genre: "Novelist",
          description:
              "J.K. Rowling is a British novelist best known for writing the Harry Potter series, which has sold over 500 million copies worldwide and been translated into more than 80 languages. Her storytelling blends fantasy, mystery, and coming-of-age themes. Rowling’s work transformed children’s literature and inspired major film adaptations. Beyond Harry Potter, she has written adult fiction under her own name and the pseudonym Robert Galbraith.",
          review: RatingBarIndicator(
            itemBuilder: (context, _) => const Icon(
              Icons.star,
              color: orange,
            ),
            itemCount: 5,
            rating: 4,
          ),
          book: books
              .where((author) =>
                  author.authorName.toLowerCase().contains("rowling"))
              .toList(),
        ),
        Author(
            name: "Louise Penny",
            image:
                "assets/img/ocqgk5-b88776772z.120160830102641000ghlier5k.10.jpg",
            genre: "Writer",
            description:
                "Louise Penny is a Canadian author famous for her mystery novels featuring Chief Inspector Armand Gamache of the Sûreté du Québec. Her books are known for their deep character development, moral themes, and the charming village of Three Pines, where many stories are set. Penny’s writing often explores human nature, kindness, and justice, earning her multiple literary awards.",
            review: RatingBarIndicator(
              itemBuilder: (context, _) => const Icon(
                Icons.star,
                color: orange,
              ),
              itemCount: 5,
              rating: 4,
            ),
            book: books
                .where((author) =>
                    author.authorName.toLowerCase().contains("penny"))
                .toList()),
        Author(
            name: "Liane Moriarty",
            image: "assets/img/liane-e1481315282656.jpg",
            genre: "Writer",
            description:
                "Liane Moriarty is an Australian author known for her contemporary fiction novels that mix humor, drama, and suspense. Her stories often explore family dynamics, secrets, and relationships within suburban life. Moriarty gained international fame with Big Little Lies and The Husband’s Secret, both of which became bestsellers and adapted into TV series.",
            review: RatingBarIndicator(
              itemBuilder: (context, _) => const Icon(
                Icons.star,
                color: orange,
              ),
              itemCount: 5,
              rating: 4,
            ),
            book: books
                .where((author) =>
                    author.authorName.toLowerCase().contains("moriarty"))
                .toList()),
        Author(
            name: "Paula Hawkins",
            image: "assets/img/ef7cd852-25ff-11e7-90af-f86e6f6f8b9b.jpg",
            genre: "Novelist",
            description:
                "Paula Hawkins is a British author best known for her psychological thriller The Girl on the Train, which became a global phenomenon and was adapted into a major film. Her writing is known for its suspenseful plots, unreliable narrators, and exploration of memory, trauma, and obsession. Before fiction success, she worked as a journalist.",
            review: RatingBarIndicator(
              itemBuilder: (context, _) => const Icon(
                Icons.star,
                color: orange,
              ),
              itemCount: 5,
              rating: 4,
            ),
            book: books
                .where((author) =>
                    author.authorName.toLowerCase().contains("hawkins"))
                .toList()),
      ];
}
