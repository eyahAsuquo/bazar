import 'package:bazar/ui/common/app_colors.dart';
import 'package:bazar/ui/common/ui_helpers.dart';
import 'package:bazar/ui/widgets/common/button/button.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stacked/stacked.dart';

import 'f_p_w_email_viewmodel.dart';

class FPWEmailView extends StackedView<FPWEmailViewModel> {
  const FPWEmailView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    FPWEmailViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      appBar: AppBar(),
      backgroundColor: offwhite,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Reset Password",
                style: GoogleFonts.poppins(
                    fontSize: 20, fontWeight: FontWeight.bold),
              ),
              verticalSpaceSmall,
              Text(
                textAlign: TextAlign.left,
                "Please enter your email, we will send verification code to your email",
                style: GoogleFonts.poppins(
                  fontSize: 14,
                ),
              ),
              verticalSpaceLarge,
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "Email",
                  style: GoogleFonts.poppins(
                    textStyle: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              verticalSpaceSmall,
              TextField(
                decoration: InputDecoration(
                    prefixIcon: const Icon(
                      Icons.email,
                      color: primaryColor,
                    ),
                    hintText: "Enter your email",
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    filled: true,
                    fillColor: const Color.fromARGB(255, 242, 241, 243)),
              ),
              verticalSpaceMedium,
              Button(
                onPressed: () => viewModel.goToFPVerificationEmail(),
                buttonContent: Text(
                  "Send",
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
  FPWEmailViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      FPWEmailViewModel();
}
