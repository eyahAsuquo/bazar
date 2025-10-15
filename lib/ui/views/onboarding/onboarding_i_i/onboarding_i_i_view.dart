import 'package:bazar/ui/common/app_colors.dart';
import 'package:bazar/ui/common/ui_helpers.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stacked/stacked.dart';

import 'onboarding_i_i_viewmodel.dart';

class OnboardingIIView extends StackedView<OnboardingIIViewModel> {
  const OnboardingIIView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    OnboardingIIViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      backgroundColor: offwhite,
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset("assets/img/unboarding_frame_2.png"),
            verticalSpaceMedium,
            Text(
              "Your Bookish Soulmate\nAwaits",
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
              "Let us be your guide to the perfect read. Discover books tailored to your tastes for a truly rewarding experience.",
              style: GoogleFonts.poppins(fontSize: 14, color: gray200),
            ),
          ],
        ),
      ),
    );
  }

  @override
  OnboardingIIViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      OnboardingIIViewModel();
}
