import 'package:bazar/ui/common/app_colors.dart';
import 'package:bazar/ui/common/ui_helpers.dart';
import 'package:bazar/ui/widgets/common/button/button.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stacked/stacked.dart';

import 'input_phone_number_viewmodel.dart';

class InputPhoneNumberView extends StackedView<InputPhoneNumberViewModel> {
  const InputPhoneNumberView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    InputPhoneNumberViewModel viewModel,
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
                "Phone Number",
                style: GoogleFonts.poppins(
                    fontSize: 20, fontWeight: FontWeight.bold),
              ),
              verticalSpaceSmall,
              Text(
                textAlign: TextAlign.center,
                "Please enter your phone number, so we can more easily deliver your order",
                style: GoogleFonts.poppins(
                  fontSize: 14,
                ),
              ),
              verticalSpaceLarge,
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "Name",
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
                      Icons.phone,
                      color: primaryColor,
                    ),
                    hintText: "Enter your phone",
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
                onPressed: () => viewModel.goToPhoneVerificationPage(),
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
  InputPhoneNumberViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      InputPhoneNumberViewModel();
}
