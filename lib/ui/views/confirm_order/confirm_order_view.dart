import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'confirm_order_viewmodel.dart';

class ConfirmOrderView extends StackedView<ConfirmOrderViewModel> {
  const ConfirmOrderView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    ConfirmOrderViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Container(
        padding: const EdgeInsets.only(left: 25.0, right: 25.0),
        child: const Center(child: Text("ConfirmOrderView")),
      ),
    );
  }

  @override
  ConfirmOrderViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      ConfirmOrderViewModel();
}
