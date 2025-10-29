import 'package:bazar/ui/common/app_colors.dart';
import 'package:bazar/ui/common/ui_helpers.dart';
import 'package:bazar/ui/models/author_model.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stacked/stacked.dart';

import 'all_authors_tab_viewmodel.dart';

class AllAuthorsTabView extends StackedView<AllAuthorsTabViewModel> {
  final List<Author> authors;
  const AllAuthorsTabView({
    Key? key,
    required this.authors,
  }) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    AllAuthorsTabViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      backgroundColor: offwhite,
      body: ListView.builder(
        itemCount: viewModel.authors.length,
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 0),
        itemBuilder: (context, index) {
          final author = viewModel.authors[index];
          return Column(
            children: [
              Column(
                children: [
                  ListTile(
                    onTap: () => viewModel.goToAuthor(author.name),
                    leading: ClipRRect(
                      borderRadius: BorderRadius.circular(100),
                      child: SizedBox(
                        height: 55,
                        width: 55,
                        child: Image.asset(
                          author.image,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    title: Text(
                      author.name,
                      style: GoogleFonts.poppins(
                          fontWeight: FontWeight.bold, fontSize: 16),
                    ),
                    subtitle: Text(
                      author.description,
                      style: GoogleFonts.poppins(fontSize: 14),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  verticalSpaceSmall,
                ],
              ),
            ],
          );
        },
      ),
    );
  }

  @override
  AllAuthorsTabViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      AllAuthorsTabViewModel(authors);
}
