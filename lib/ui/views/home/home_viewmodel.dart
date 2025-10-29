import 'package:bazar/app/app.locator.dart';
import 'package:bazar/app/app.router.dart';
import 'package:bazar/ui/common/app_colors.dart';
import 'package:bazar/ui/common/ui_helpers.dart';
import 'package:bazar/ui/models/author_model.dart';
import 'package:bazar/ui/models/book_model.dart';
import 'package:bazar/ui/widgets/common/button/button.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:uuid/uuid.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

var uuid = const Uuid();

class HomeViewModel extends BaseViewModel {
  final _navigation = locator<NavigationService>();

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
            name: "Liane Moriartv",
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
                    author.authorName.toLowerCase().contains("moriartv"))
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

  void goToVendorsScreen() {
    _navigation.navigateToVendorsView();
  }

  void goToAuthorsScreen() {
    _navigation.navigateToAuthorsView(authors: authors);
  }

  void goBack() {
    _navigation.back();
  }

  void showBookBottomSheet(String bookId, double price, BuildContext context) {
    final book = books.firstWhere((book) => book.id == bookId);

    bool isFav = false;

    int itemQty = 1;

    double price = book.price;

    showModalBottomSheet(
      context: context,
      backgroundColor: white,
      isScrollControlled: true,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(40),
        ),
      ),
      builder: (BuildContext context) {
        return StatefulBuilder(
          builder: (context, setState) {
            return FractionallySizedBox(
              heightFactor: 0.95,
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    children: [
                      Container(
                        width: 80,
                        height: 5,
                        decoration: BoxDecoration(
                            color: kcLightGrey,
                            borderRadius: BorderRadius.circular(50)),
                      ),
                      verticalSpaceTiny,
                      Container(
                        height: 350,
                        padding: const EdgeInsets.all(8),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image.asset(fit: BoxFit.contain, book.image),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            book.title,
                            style: GoogleFonts.poppins(
                                fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                          IconButton(
                            onPressed: () {
                              setState(
                                () => isFav = !isFav,
                              );
                            },
                            icon: Icon(
                              Icons.favorite,
                              color: isFav ? purple500 : kcLightGrey,
                            ),
                          ),
                        ],
                      ),
                      Text(
                        book.description,
                        style: GoogleFonts.poppins(color: kcLightGrey),
                      ),
                      verticalSpaceTiny,
                      Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          "Review",
                          style: GoogleFonts.poppins(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Row(
                        children: [
                          book.review,
                          Text(
                            "(${book.review.rating.toString()})",
                            style: GoogleFonts.poppins(
                                fontSize: 14, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      verticalSpaceSmall,
                      Row(
                        children: [
                          //reduce qty button
                          IconButton(
                            style: IconButton.styleFrom(
                              minimumSize: const Size(5, 5),
                              backgroundColor:
                                  itemQty > 1 ? purple500 : kcLightGrey,
                              foregroundColor:
                                  itemQty > 1 ? white : Colors.black87,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(80),
                              ),
                            ),
                            onPressed: () {
                              if (itemQty > 1) {
                                setState(() {
                                  itemQty--;
                                  if (price != book.price) {
                                    price = price - book.price;
                                  }
                                });
                              }
                            },
                            icon: const Icon(
                              Icons.remove,
                              size: 12,
                              fontWeight: FontWeight.bold,
                            ),
                          ),

                          // qty
                          Text(
                            itemQty.toString(),
                            style: GoogleFonts.poppins(
                                fontWeight: FontWeight.bold, fontSize: 14),
                          ),

                          //add qty
                          IconButton(
                            style: IconButton.styleFrom(
                              minimumSize: const Size(5, 5),
                              backgroundColor: purple500,
                              foregroundColor: white,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(80),
                              ),
                            ),
                            onPressed: () {
                              setState(() {
                                itemQty++;
                                price = price + book.price;
                              });
                            },
                            icon: const Icon(
                              Icons.add,
                              size: 15,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          horizontalSpaceSmall,
                          //book price
                          Text(
                            "\$${price.toStringAsFixed(2)}",
                            style: GoogleFonts.poppins(
                                color: purple700, fontWeight: FontWeight.w500),
                          )
                        ],
                      ),
                      verticalSpaceSmall,
                      Row(
                        children: [
                          Expanded(
                            child: Button(
                              onPressed: () => _navigation.back(),
                              buttonContent: Text(
                                "Continue shopping",
                                style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.w600),
                              ),
                            ),
                          ),
                          horizontalSpaceSmall,
                          Expanded(
                            child: Button(
                              foregroundColor: purple500,
                              backgroundColor:
                                  const Color.fromARGB(80, 227, 227, 227),
                              onPressed: () {},
                              buttonContent: Text(
                                "Add to cart",
                                style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.w600),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        );
      },
    );
  }
}
