import 'package:bazar/ui/common/app_colors.dart';
import 'package:bazar/ui/common/ui_helpers.dart';
import 'package:bazar/ui/models/author_model.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stacked/stacked.dart';

import 'author_viewmodel.dart';

class AuthorView extends StackedView<AuthorViewModel> {
  final Author author;
  const AuthorView({Key? key, required this.author}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    AuthorViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "Authors",
            style:
                GoogleFonts.poppins(fontSize: 16, fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
        ),
        backgroundColor: offwhite,
        body: Padding(
          padding:
              const EdgeInsetsGeometry.symmetric(vertical: 20, horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Align(
                alignment: Alignment.center,
                child: Column(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(50),
                      child: SizedBox(
                        height: 100,
                        width: 100,
                        child: Image.asset(
                          author.image,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    verticalSpaceTiny,
                    Text(
                      author.genre,
                      style: GoogleFonts.poppins(),
                    ),
                    verticalSpaceSmall,
                    Text(
                      author.name,
                      style: GoogleFonts.poppins(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              verticalSpaceSmall,
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  author.review,
                  Text(
                    "(${author.review.rating.toString()})",
                    style: GoogleFonts.poppins(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              verticalSpaceMedium,
              Text(
                "About",
                style: GoogleFonts.poppins(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                ),
              ),
              verticalSpaceTiny,
              Text(
                author.description,
                style: GoogleFonts.poppins(
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                  color: kcLightGrey,
                ),
              ),
              verticalSpaceMedium,
              Text(
                "Products",
                style: GoogleFonts.poppins(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Expanded(
                child: GridView.builder(
                  itemCount: author.book.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: author.book.length,
                    crossAxisSpacing: 2,
                  ),
                  itemBuilder: (_, index) {
                    final authorBooks = author.book[index];
                    return GestureDetector(
                      onTap: () => viewModel.showBookBottomSheet(
                          authorBooks.id, authorBooks.price, context),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          verticalSpaceSmall,
                          ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: SizedBox(
                              height: 150,
                              width: 150,
                              child: Image.asset(
                                authorBooks.image,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          verticalSpaceTiny,
                          Text(
                            authorBooks.title,
                            style: GoogleFonts.poppins(
                                fontSize: 12, fontWeight: FontWeight.bold),
                          ),
                          verticalSpaceTiny,
                          Text(
                            "\$${authorBooks.price.toString()}",
                            style: GoogleFonts.poppins(
                              fontSize: 12,
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ));
  }

  @override
  AuthorViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      AuthorViewModel(author);
}
