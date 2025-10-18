import 'package:bazar/ui/common/app_colors.dart';
import 'package:bazar/ui/common/ui_helpers.dart';
import 'package:bazar/ui/widgets/common/button/button.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stacked/stacked.dart';

import 'f_p_success_new_password_viewmodel.dart';

class FPSuccessNewPasswordView
    extends StackedView<FPSuccessNewPasswordViewModel> {
  const FPSuccessNewPasswordView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    FPSuccessNewPasswordViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
      ),
      backgroundColor: offwhite,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset("assets/img/congratulation_logo.png"),
              verticalSpaceLarge,
              Text(
                "Password Changed!",
                style: GoogleFonts.poppins(
                    fontSize: 20, fontWeight: FontWeight.bold),
              ),
              verticalSpaceSmall,
              Text(
                textAlign: TextAlign.center,
                "Password chnaged successfully, you can login agin with a new password",
                style: GoogleFonts.poppins(
                  fontSize: 14,
                ),
              ),
              verticalSpaceLarge,
              Button(
                onPressed: () => viewModel.goToSignInPage(),
                buttonContent: Text(
                  "Login",
                  style: GoogleFonts.poppins(fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  FPSuccessNewPasswordViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      FPSuccessNewPasswordViewModel();
}
