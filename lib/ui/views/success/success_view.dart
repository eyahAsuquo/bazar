import 'package:bazar/ui/common/app_colors.dart';
import 'package:bazar/ui/common/ui_helpers.dart';
import 'package:bazar/ui/widgets/common/button/button.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stacked/stacked.dart';

import 'success_viewmodel.dart';

class SuccessView extends StackedView<SuccessViewModel> {
  const SuccessView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    SuccessViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      backgroundColor: offwhite,
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 80, horizontal: 30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("assets/img/congratulation_logo.png"),
            verticalSpaceLarge,
            Text(
              "Congratulations!",
              style: GoogleFonts.poppins(
                  fontSize: 20, fontWeight: FontWeight.bold),
            ),
            verticalSpaceSmall,
            Text(
              textAlign: TextAlign.center,
              "your account is complete, please enjoy the best menu from us",
              style: GoogleFonts.poppins(
                fontSize: 14,
              ),
            ),
            verticalSpaceLarge,
            Button(
              onPressed: () => viewModel.goToHomePage(),
              buttonContent: Text(
                "Get Started",
                style: GoogleFonts.poppins(fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  SuccessViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      SuccessViewModel();
}
