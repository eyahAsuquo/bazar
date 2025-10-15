import 'package:bazar/ui/common/app_colors.dart';
import 'package:bazar/ui/common/ui_helpers.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stacked/stacked.dart';

import 'onboarding_i_viewmodel.dart';

class OnboardingIView extends StackedView<OnboardingIViewModel> {
  const OnboardingIView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    OnboardingIViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      backgroundColor: offwhite,
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset("assets/img/unboarding_frame_1.png"),
            verticalSpaceMedium,
            Text(
              "Now reading books\nwill be easier",
              textAlign: TextAlign.center,
              style: GoogleFonts.poppins(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                height: 1.3,
              ),
            ),
            verticalSpaceTiny,
            Text(
              textAlign: TextAlign.center,
              " Discover new worlds, join a vibrant reading community. Start your reading adventure effortlessly with us.",
              style: GoogleFonts.poppins(fontSize: 14, color: gray200),
            ),
          ],
        ),
      ),
    );
  }

  @override
  OnboardingIViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      OnboardingIViewModel();
}
