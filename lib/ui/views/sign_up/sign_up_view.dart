import 'package:bazar/ui/common/app_colors.dart';
import 'package:bazar/ui/common/ui_helpers.dart';
import 'package:bazar/ui/widgets/common/button/button.dart';
import 'package:bazar/ui/widgets/common/button_text/button_text.dart';
import 'package:bazar/ui/widgets/common/text_form/text_form.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stacked/stacked.dart';

import 'sign_up_viewmodel.dart';

class SignUpView extends StackedView<SignUpViewModel> {
  const SignUpView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    SignUpViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      appBar: AppBar(),
      backgroundColor: offwhite,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Sign Up',
              style: GoogleFonts.poppins(
                  textStyle: const TextStyle(
                      fontSize: 25, fontWeight: FontWeight.bold)),
            ),
            verticalSpaceTiny,
            Text(
              "Create account and choose favourite menu",
              style: GoogleFonts.poppins(
                textStyle: const TextStyle(fontSize: 14),
              ),
            ),
            verticalSpaceTiny,
            Form(
              key: viewModel.formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  verticalSpaceMedium,
                  Text(
                    "Name",
                    style: GoogleFonts.poppins(
                      textStyle: const TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  verticalSpaceTiny,
                  TextForm(
                    hintText: "Your Name",
                    obscureText: false,
                    keyboardType: TextInputType.name,
                    controler: viewModel.emailControler,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "Please enter your your name";
                      }

                      return null;
                    },
                  ),
                  verticalSpaceMedium,
                  Text(
                    "Email",
                    style: GoogleFonts.poppins(
                      textStyle: const TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  verticalSpaceTiny,
                  TextForm(
                    hintText: "Your Email",
                    obscureText: false,
                    keyboardType: TextInputType.emailAddress,
                    controler: viewModel.emailControler,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "Please enter your email";
                      }
                      if (!value.contains("@")) {
                        return "Enter a valid email";
                      }
                      return null;
                    },
                  ),
                  verticalSpaceMedium,
                  Text(
                    "Password",
                    style: GoogleFonts.poppins(
                      textStyle: const TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  verticalSpaceTiny,
                  TextForm(
                    suffixIcon: IconButton(
                      onPressed: () => viewModel.showPassword(),
                      icon: viewModel.obscureText
                          ? const Icon(Icons.visibility)
                          : const Icon(Icons.visibility_off),
                    ),
                    hintText: "Your Password",
                    obscureText: viewModel.obscureText,
                    keyboardType: TextInputType.emailAddress,
                    controler: viewModel.emailControler,
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
                ],
              ),
            ),
            verticalSpaceMedium,
            Button(
              onPressed: () => viewModel.goToEmailVerificationPage(),
              backgroundColor: purple500,
              buttonContent: const Text(
                "Register",
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18),
              ),
            ),
            verticalSpace(1),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("Don't have an account?"),
                ButtonText(
                  onPressed: () => viewModel.goToLogInPage(),
                  text: "Sign In",
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  textColor: primaryColor,
                ),
              ],
            ),
            const Expanded(
              child: SizedBox(),
            ),
            Center(
              child: Column(
                children: [
                  Text(
                    "By clicking Register, you agree to our",
                    style: GoogleFonts.poppins(
                      fontSize: 13,
                    ),
                  ),
                  InkWell(
                    onTap: () {},
                    child: Text(
                      "Terms and Data Policy",
                      style: GoogleFonts.poppins(
                          color: primaryColor,
                          fontWeight: FontWeight.bold,
                          fontSize: 13),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  SignUpViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      SignUpViewModel();
}
