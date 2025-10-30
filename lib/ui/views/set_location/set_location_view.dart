import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'set_location_viewmodel.dart';

class SetLocationView extends StackedView<SetLocationViewModel> {
  const SetLocationView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    SetLocationViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Container(
        padding: const EdgeInsets.only(left: 25.0, right: 25.0),
        child: const Center(child: Text("SetLocationView")),
      ),
    );
  }

  @override
  SetLocationViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      SetLocationViewModel();
}
