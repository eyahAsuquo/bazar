import 'package:bazar/ui/common/app_colors.dart';
import 'package:bazar/ui/common/ui_helpers.dart';
import 'package:bazar/ui/widgets/common/button/button.dart';
import 'package:bazar/ui/widgets/common/text_form/text_form.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stacked/stacked.dart';

import 'f_p_create_new_password_viewmodel.dart';

class FPCreateNewPasswordView
    extends StackedView<FPCreateNewPasswordViewModel> {
  const FPCreateNewPasswordView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    FPCreateNewPasswordViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      appBar: AppBar(),
      backgroundColor: offwhite,
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "New Password",
              style: GoogleFonts.poppins(
                  fontSize: 20, fontWeight: FontWeight.bold),
            ),
            verticalSpaceSmall,
            Text(
              "Create your new password, so you can login to your account",
              style: GoogleFonts.poppins(
                fontSize: 14,
              ),
            ),
            verticalSpaceMedium,
            Form(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Password",
                    style: GoogleFonts.poppins(
                      textStyle: const TextStyle(
                          fontSize: 14, fontWeight: FontWeight.w600),
                    ),
                  ),
                  verticalSpaceTiny,
                  TextForm(
                    suffixIcon: IconButton(
                      onPressed: () => viewModel.goToFPSuccessPage(),
                      icon: viewModel.obscureText
                          ? const Icon(Icons.visibility)
                          : const Icon(Icons.visibility_off),
                    ),
                    hintText: "Your Password",
                    obscureText: viewModel.obscureText,
                    keyboardType: TextInputType.text,
                    controler: viewModel.passwordControler,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "Please enter your password";
                      }
                      if (value < 8) {
                        return "password must be 8 in length";
                      }
                      if (!value.contains("0") ||
                          !value.contains("1") ||
                          !value.contains("2") ||
                          !value.contains("3") ||
                          !value.contains("4") ||
                          !value.contains("5") ||
                          !value.contains("6") ||
                          !value.contains("7") ||
                          !value.contains("8") ||
                          !value.contains("9")) {
                        return "Password must contain a number";
                      }
                      if (!value.contains("!") ||
                          !value.contains("@") ||
                          !value.contains("#") ||
                          !value.contains("%")) {
                        return "Password must contain atleast '!, @, # or '\$'";
                      }
                      return null;
                    },
                  ),
                  verticalSpaceMedium,
                  Text(
                    "Confirm Password",
                    style: GoogleFonts.poppins(
                      textStyle: const TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  verticalSpaceTiny,
                  TextForm(
                    suffixIcon: IconButton(
                      onPressed: () => viewModel.goToFPSuccessPage(),
                      icon: viewModel.obscureText
                          ? const Icon(Icons.visibility)
                          : const Icon(Icons.visibility_off),
                    ),
                    hintText: "Your Password",
                    obscureText: viewModel.obscureText,
                    keyboardType: TextInputType.text,
                    controler: viewModel.confirmPasswordControler,
                  ),
                ],
              ),
            ),
            verticalSpaceLarge,
            Button(
              onPressed: () => viewModel.goToFPSuccessPage(),
              buttonContent: Text(
                "Send",
                style: GoogleFonts.poppins(fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  FPCreateNewPasswordViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      FPCreateNewPasswordViewModel();
}
