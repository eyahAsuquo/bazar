import 'package:bazar/app/app.locator.dart';
import 'package:bazar/app/app.router.dart';
import 'package:bazar/ui/common/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class ForgetPasswordViewModel extends BaseViewModel {
  final _navigationService = locator<NavigationService>();

  String? selectedOption;

  void selectOption(String option) {
    selectedOption = option;
    rebuildUi();
  }

  void handleContinue(BuildContext context) {
    if (selectedOption == null) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          backgroundColor: red,
          content: Text("Please select an option first",
              style: GoogleFonts.poppins()),
        ),
      );
      return;
    }

    if (selectedOption == "email") {
      goToFPWEmail();
    } else if (selectedOption == "phone") {
      goToFPWPhone();
    }
  }

  void goToFPWEmail() {
    _navigationService.navigateToFPWEmailView();
  }

  void goToFPWPhone() {
    _navigationService.navigateToFPWPhoneView();
  }
}
