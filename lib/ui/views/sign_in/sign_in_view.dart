import 'package:bazar/ui/common/app_colors.dart';
import 'package:bazar/ui/common/ui_helpers.dart';
import 'package:bazar/ui/widgets/common/button/button.dart';
import 'package:bazar/ui/widgets/common/button_text/button_text.dart';
import 'package:bazar/ui/widgets/common/text_form/text_form.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stacked/stacked.dart';

import 'sign_in_viewmodel.dart';

class SignInView extends StackedView<SignInViewModel> {
  const SignInView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    SignInViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
      ),
      backgroundColor: offwhite,
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Welcome Back 👋',
              style: GoogleFonts.poppins(
                  textStyle: const TextStyle(
                      fontSize: 25, fontWeight: FontWeight.bold)),
            ),
            verticalSpaceTiny,
            Text(
              "Sign to your account",
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
                        return "Please enter your email";
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
            verticalSpaceTiny,
            ButtonText(
              onPressed: () => viewModel.goToForgetPasswordPage(),
              text: "Forget Password?",
              fontSize: 12,
              fontWeight: FontWeight.bold,
              textColor: primaryColor,
            ),
            Button(
              onPressed: () => viewModel.goToHomePage(),
              backgroundColor: purple500,
              buttonContent: const Text(
                "Login",
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18),
              ),
            ),
            verticalSpaceSmall,
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("Don't have an account?"),
                ButtonText(
                  onPressed: () => viewModel.goToSignUpPage(),
                  text: "Sign Up",
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  textColor: primaryColor,
                ),
                verticalSpaceSmall,
              ],
            ),
            Row(
              children: [
                const Expanded(child: Divider()),
                Text(
                  "  Or with  ",
                  style: GoogleFonts.poppins(),
                ),
                const Expanded(child: Divider()),
              ],
            ),
            verticalSpace(15),
            Button(
              border: const BorderSide(
                width: 1,
                color: Color.fromARGB(255, 194, 194, 196),
              ),
              backgroundColor: white,
              foregroundColor: gray900,
              onPressed: () {},
              buttonContent: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const FaIcon(FontAwesomeIcons.google),
                  horizontalSpaceSmall,
                  Text(
                    "Sign in with Google",
                    style: GoogleFonts.poppins(),
                  )
                ],
              ),
            ),
            verticalSpace(10),
            Button(
              border: const BorderSide(
                width: 1,
                color: Color.fromARGB(255, 194, 194, 196),
              ),
              backgroundColor: white,
              foregroundColor: gray900,
              onPressed: () {},
              buttonContent: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const FaIcon(FontAwesomeIcons.apple),
                  horizontalSpaceSmall,
                  Text(
                    "Sign in with Apple",
                    style: GoogleFonts.poppins(),
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
  SignInViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      SignInViewModel();
}
