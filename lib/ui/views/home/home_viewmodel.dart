import 'package:bazar/app/app.locator.dart';
import 'package:bazar/app/app.router.dart';
import 'package:bazar/services/author_service.dart';
import 'package:bazar/services/book_service.dart';
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

var uuid = const Uuid();

class HomeViewModel extends BaseViewModel {
  final _navigation = locator<NavigationService>();
  final _bookService = locator<BookService>();
  final _authorService = locator<AuthorService>();

  List<Book> get books => _bookService.books;
  List<Author> get authors => _authorService.authors;

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
