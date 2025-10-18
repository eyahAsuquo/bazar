import 'package:bazar/ui/common/app_colors.dart';
import 'package:bazar/ui/common/ui_helpers.dart';
import 'package:bazar/ui/views/onboarding/onboarding_i/onboarding_i_view.dart';
import 'package:bazar/ui/views/onboarding/onboarding_i_i/onboarding_i_i_view.dart';
import 'package:bazar/ui/views/onboarding/onboarding_i_i_i/onboarding_i_i_i_view.dart';
import 'package:bazar/ui/widgets/common/button/button.dart';
import 'package:bazar/ui/widgets/common/button_text/button_text.dart';
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
      resizeToAvoidBottomInset: true,
      backgroundColor: offwhite,
      body: SafeArea(
        minimum: const EdgeInsets.only(top: 50),
        child: Stack(
          children: [
            PageView(
              controller: viewModel.pageController,
              children: const [
                OnboardingIView(),
                OnboardingIIView(),
                OnboardingIIIView()
              ],
            ),
            TextButton(
              onPressed: () => viewModel.goToSignIn(),
              child: Text(
                "Skip",
                style: GoogleFonts.poppins(
                  fontSize: 16,
                  color: primaryColor,
                ),
              ),
            ),
            Container(
              alignment: const Alignment(0, 0.44),
              child: SmoothPageIndicator(
                effect: const JumpingDotEffect(
                  radius: 8,
                  dotWidth: 10,
                  dotHeight: 10,
                  activeDotColor: primaryColor,
                ),
                controller: viewModel.pageController,
                count: 3,
              ),
            ),
            Container(
              alignment: const Alignment(0, 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  verticalSpaceLarge,
                  Button(
                    onPressed: () {
                      viewModel.pageController.nextPage(
                        duration: const Duration(seconds: 3),
                        curve: const FlippedCurve(Curves.bounceInOut),
                      );
                    },
                    buttonContent: Text(
                      "Continue",
                      style: GoogleFonts.poppins(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  verticalSpaceMedium,
                  ButtonText(
                    onPressed: () => viewModel.goToSignIn(),
                    text: "Sign in",
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                  ),
                  verticalSpace(30),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  PageViewViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      PageViewViewModel();
}
