import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'all_cat_tab_viewmodel.dart';

class AllCatTabView extends StackedView<AllCatTabViewModel> {
  const AllCatTabView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    AllCatTabViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Container(
        padding: const EdgeInsets.only(left: 25.0, right: 25.0),
        child: const Center(child: Text("AllCatTabView")),
      ),
    );
  }

  @override
  AllCatTabViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      AllCatTabViewModel();
}
