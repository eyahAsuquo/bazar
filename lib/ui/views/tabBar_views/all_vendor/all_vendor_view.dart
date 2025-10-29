import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'all_vendor_viewmodel.dart';

class AllVendorView extends StackedView<AllVendorViewModel> {
  const AllVendorView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    AllVendorViewModel viewModel,
    Widget? child,
  ) {
    return GridView(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3, crossAxisSpacing: 1, mainAxisSpacing: 50),
      children: [
        Image.asset("assets/img/Frame (5).png"),
        Image.asset("assets/img/Frame (6).png"),
        Image.asset("assets/img/Frame (7).png"),
        Image.asset("assets/img/Frame (8).png"),
        Image.asset("assets/img/Frame (9).png"),
        Image.asset("assets/img/Frame (10).png"),
        Image.asset("assets/img/Frame (11).png"),
        Image.asset("assets/img/Frame (12).png"),
        Image.asset("assets/img/Frame (13).png"),
      ],
    );
  }

  @override
  AllVendorViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      AllVendorViewModel();
}
