import 'package:bazar/ui/common/app_colors.dart';
import 'package:bazar/ui/common/ui_helpers.dart';
import 'package:bazar/ui/models/author_model.dart';
import 'package:bazar/ui/views/tabBar_views/all_authors_tab/all_authors_tab_view.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stacked/stacked.dart';

import 'authors_viewmodel.dart';

class AuthorsView extends StackedView<AuthorsViewModel> {
  const AuthorsView({Key? key, required this.authors}) : super(key: key);

  final List<Author> authors;

  @override
  Widget builder(
    BuildContext context,
    AuthorsViewModel viewModel,
    Widget? child,
  ) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        backgroundColor: offwhite,
        appBar: AppBar(
          backgroundColor: offwhite,
          title: Text(
            "Authors",
            style:
                GoogleFonts.poppins(fontSize: 16, fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.search),
            ),
          ],
        ),
        body: Padding(
          padding: const EdgeInsetsGeometry.symmetric(
            vertical: 20,
            horizontal: 20,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Check the authors",
                style: GoogleFonts.poppins(
                    color: kcLightGrey, fontWeight: FontWeight.w400),
              ),
              Text(
                "Authors",
                style: GoogleFonts.poppins(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: purple500),
              ),
              verticalSpaceMedium,
              TabBar(
                isScrollable: true,
                dividerColor: Colors.transparent,
                unselectedLabelColor: kcLightGrey,
                tabAlignment: TabAlignment.start,
                labelPadding: const EdgeInsets.only(right: 20),
                tabs: [
                  Text("All",
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w700,
                      )),
                  Text("Poets",
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w700,
                      )),
                  Text("Playwrights",
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w700,
                      )),
                  Text("Novelists",
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w700,
                      )),
                  Text("Journalist",
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w700,
                      )),
                ],
              ),
              Expanded(
                child: TabBarView(
                  children: [
                    GestureDetector(
                        onTap: () {},
                        child: AllAuthorsTabView(authors: authors)),
                    Center(
                      child: Text(
                        textAlign: TextAlign.center,
                        "Poets Authors\n Coming Soon",
                        style: GoogleFonts.poppins(),
                      ),
                    ),
                    Center(
                      child: Text(
                        textAlign: TextAlign.center,
                        "Playwrights Authors\n Coming Soon",
                        style: GoogleFonts.poppins(),
                      ),
                    ),
                    Center(
                      child: Text(
                        textAlign: TextAlign.center,
                        "Novelists Authors\n Coming Soon",
                        style: GoogleFonts.poppins(),
                      ),
                    ),
                    Center(
                      child: Text(
                        textAlign: TextAlign.center,
                        "Journalists Authors\n Coming Soon",
                        style: GoogleFonts.poppins(),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  AuthorsViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      AuthorsViewModel(authors);
}
