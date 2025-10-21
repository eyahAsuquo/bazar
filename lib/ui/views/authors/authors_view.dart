import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'authors_viewmodel.dart';

class AuthorsView extends StackedView<AuthorsViewModel> {
  const AuthorsView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    AuthorsViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Container(
        padding: const EdgeInsets.only(left: 25.0, right: 25.0),
        child: const Center(child: Text("AuthorsView")),
      ),
    );
  }

  @override
  AuthorsViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      AuthorsViewModel();
}
