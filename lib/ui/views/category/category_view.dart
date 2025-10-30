import 'package:bazar/ui/common/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stacked/stacked.dart';

import 'category_viewmodel.dart';

class CategoryView extends StackedView<CategoryViewModel> {
  const CategoryView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    CategoryViewModel viewModel,
    Widget? child,
  ) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        backgroundColor: offwhite,
        appBar: AppBar(
          backgroundColor: offwhite,
          leading: IconButton(
            onPressed: () {},
            icon: const Icon(Icons.search),
          ),
          title: Text(
            "Category",
            style: GoogleFonts.poppins(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          centerTitle: true,
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.notification_add),
            ),
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Column(
            children: [
              TabBar(
                tabAlignment: TabAlignment.start,
                labelPadding: const EdgeInsets.only(right: 30),
                isScrollable: true,
                dividerColor: Colors.transparent,
                unselectedLabelColor: kcLightGrey,
                labelStyle: GoogleFonts.poppins(
                  fontWeight: FontWeight.bold,
                ),
                tabs: const [
                  Text("All"),
                  Text("Novel"),
                  Text("Self Love"),
                  Text("Science"),
                  Text("Romance"),
                ],
              ),
              const Expanded(
                child: TabBarView(children: [
                  Center(
                    child: Text("For All"),
                  ),
                  Center(
                    child: Text("For Novel"),
                  ),
                  Center(
                    child: Text("For Self Love"),
                  ),
                  Center(
                    child: Text("For Science"),
                  ),
                  Center(
                    child: Text("For Romance"),
                  ),
                ]),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  CategoryViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      CategoryViewModel();
}
