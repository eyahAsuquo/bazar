import 'package:bazar/ui/common/app_colors.dart';
import 'package:bazar/ui/common/ui_helpers.dart';
import 'package:bazar/ui/widgets/common/button/button.dart';
import 'package:bazar/ui/widgets/common/button_text/button_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pinput/pinput.dart';
import 'package:stacked/stacked.dart';

import 'f_p_verification_code_phone_viewmodel.dart';

class FPVerificationCodePhoneView
    extends StackedView<FPVerificationCodePhoneViewModel> {
  const FPVerificationCodePhoneView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    FPVerificationCodePhoneViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      appBar: AppBar(),
      backgroundColor: offwhite,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 30),
          child: Column(
            children: [
              Text(
                "Verification Code",
                style: GoogleFonts.poppins(
                    fontSize: 20, fontWeight: FontWeight.bold),
              ),
              verticalSpaceSmall,
              Text(
                textAlign: TextAlign.center,
                "Please enter the code we just sent to to your phone number (+234) 708 108 4796",
                style: GoogleFonts.poppins(
                  fontSize: 14,
                ),
              ),
              verticalSpaceLarge,
              Pinput(
                defaultPinTheme: PinTheme(
                  width: 50,
                  height: 55,
                  margin: const EdgeInsets.symmetric(horizontal: 8),
                  textStyle: GoogleFonts.poppins(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(color: gray50),
                  ),
                ),
                focusedPinTheme: PinTheme(
                  width: 50,
                  height: 55,
                  decoration: BoxDecoration(
                    border: Border.all(width: 2, color: primaryColor),
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
              ),
              verticalSpaceSmall,
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("If you didn't receive a code?"),
                  ButtonText(
                    onPressed: () {},
                    text: "Resend",
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    textColor: primaryColor,
                  ),
                ],
              ),
              verticalSpaceMedium,
              Button(
                onPressed: () => viewModel.goToFPNewPasswordPage(),
                buttonContent: Text(
                  "Continue",
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
  FPVerificationCodePhoneViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      FPVerificationCodePhoneViewModel();
}
