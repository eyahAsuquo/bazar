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
      body: SingleChildScrollView(
        child: Padding(
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
                key: viewModel.formKey,
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
                        onPressed: () => viewModel.showPassword(),
                        icon: viewModel.obscureText
                            ? const Icon(Icons.visibility_off)
                            : const Icon(Icons.visibility),
                      ),
                      hintText: "Your Password",
                      obscureText: viewModel.obscureText,
                      controler: viewModel.passwordControler,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "Please enter your password";
                        }
                        if (value.length < 8) {
                          return "password must be 8 in length";
                        }
                        if (!value
                            .split('')
                            .any((c) => '0123456789'.contains(c))) {
                          return "Password must include at least one number";
                        }
                        if (!value
                            .split('')
                            .any((c) => "!@#%'\$'".contains(c))) {
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
                      validator: (value) {
                        if (value != viewModel.passwordControler.text) {
                          return "Password mismatch";
                        }
                        return null;
                      },
                      suffixIcon: IconButton(
                        onPressed: () => viewModel.showPassword(),
                        icon: viewModel.obscureText
                            ? const Icon(Icons.visibility_off)
                            : const Icon(Icons.visibility),
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
      ),
    );
  }

  @override
  FPCreateNewPasswordViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      FPCreateNewPasswordViewModel();
}
