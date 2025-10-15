import 'package:bazar/ui/common/app_colors.dart';
import 'package:bazar/ui/common/ui_helpers.dart';
import 'package:bazar/ui/views/onboarding/onboarding_i/onboarding_i_view.dart';
import 'package:bazar/ui/views/onboarding/onboarding_i_i/onboarding_i_i_view.dart';
import 'package:bazar/ui/views/onboarding/onboarding_i_i_i/onboarding_i_i_i_view.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:stacked/stacked.dart';

import 'page_view_viewmodel.dart';

class PageViewView extends StackedView<PageViewViewModel> {
  const PageViewView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    PageViewViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      backgroundColor: offwhite,
      appBar: AppBar(
        leading: TextButton(
            onPressed: () {},
            child: Text(
              "Skip",
              style: GoogleFonts.poppins(
                fontSize: 16,
                color: primaryColor,
              ),
            )),
      ),
      body: Stack(
        children: [
          PageView(
            controller: viewModel.pageController,
            children: const [
              OnboardingIView(),
              OnboardingIIView(),
              OnboardingIIIView()
            ],
          ),
          Container(
            alignment: const Alignment(0, 0.4),
            child: SmoothPageIndicator(
                effect: const JumpingDotEffect(
                  radius: 8,
                  dotWidth: 10,
                  dotHeight: 10,
                ),
                controller: viewModel.pageController,
                count: 3),
          ),
          Container(
            alignment: const Alignment(0, 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                verticalSpaceLarge,
                FilledButton(
                  style: FilledButton.styleFrom(
                    padding: const EdgeInsets.symmetric(vertical: 15),
                    backgroundColor: primaryColor,
                    foregroundColor: white,
                    minimumSize: const Size(350, 50),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  onPressed: () {},
                  child: Text(
                    "Continue",
                    style: GoogleFonts.poppins(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                verticalSpaceMedium,
                TextButton(
                  onPressed: () {},
                  child: Text(
                    "Sign in",
                    style: GoogleFonts.poppins(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      color: primaryColor,
                    ),
                  ),
                ),
                verticalSpace(50),
              ],
            ),
          ),
        ],
      ),
    );
  }

  @override
  PageViewViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      PageViewViewModel();
}
