import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'vendors_viewmodel.dart';

class VendorsView extends StackedView<VendorsViewModel> {
  const VendorsView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    VendorsViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Container(
        padding: const EdgeInsets.only(left: 25.0, right: 25.0),
        child: const Center(child: Text("VendorsView")),
      ),
    );
  }

  @override
  VendorsViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      VendorsViewModel();
}
