import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'menu_search_viewmodel.dart';

class MenuSearchView extends StackedView<MenuSearchViewModel> {
  const MenuSearchView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    MenuSearchViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Container(
        padding: const EdgeInsets.only(left: 25.0, right: 25.0),
        child: const Center(child: Text("MenuSearchView")),
      ),
    );
  }

  @override
  MenuSearchViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      MenuSearchViewModel();
}
