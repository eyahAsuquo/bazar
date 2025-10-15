import 'package:bazar/ui/common/app_colors.dart';
import 'package:bazar/ui/common/ui_helpers.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stacked/stacked.dart';

import 'onboarding_i_i_i_viewmodel.dart';

class OnboardingIIIView extends StackedView<OnboardingIIIViewModel> {
  const OnboardingIIIView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    OnboardingIIIViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      backgroundColor: offwhite,
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset("assets/img/unboarding_frame_3.png"),
            verticalSpaceMedium,
            Text(
              "Start Your Adventure",
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
              "Ready to embark on a quest for inspiration and knowledge? Your adventure begins now. Let's go!",
              style: GoogleFonts.poppins(fontSize: 14, color: gray200),
            ),
          ],
        ),
      ),
    );
  }

  @override
  OnboardingIIIViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      OnboardingIIIViewModel();
}
