import 'package:bazar/ui/common/app_colors.dart';
import 'package:bazar/ui/common/ui_helpers.dart';
import 'package:bazar/ui/widgets/common/button/button.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stacked/stacked.dart';

import 'forget_password_viewmodel.dart';

class ForgetPasswordView extends StackedView<ForgetPasswordViewModel> {
  const ForgetPasswordView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    ForgetPasswordViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      appBar: AppBar(),
      backgroundColor: offwhite,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Forget Password",
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              verticalSpaceTiny,
              Text(
                "Select whic contact details should we use to reset your password",
                style: GoogleFonts.poppins(
                  fontSize: 14,
                ),
              ),
              verticalSpaceMedium,
              Row(
                children: [
                  Expanded(
                    child: InkWell(
                      onTap: () {},
                      borderRadius: BorderRadius.circular(12),
                      highlightColor: primaryColor,
                      splashColor: const Color.fromARGB(36, 53, 35, 104),
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                            vertical: 30, horizontal: 12),
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(101, 238, 236, 236),
                          borderRadius: BorderRadius.circular(12),
                          border: Border.all(color: primaryColor),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Icon(
                              Icons.email,
                              color: primaryColor,
                            ),
                            verticalSpace(20),
                            Text(
                              "Email",
                              style: GoogleFonts.poppins(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            verticalSpaceTiny,
                            Text(
                              "Send to your email",
                              style: GoogleFonts.poppins(
                                fontSize: 11,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  horizontalSpaceMedium,
                  Expanded(
                    child: InkWell(
                      onTap: () {},
                      borderRadius: BorderRadius.circular(12),
                      highlightColor: primaryColor,
                      splashColor: const Color.fromARGB(36, 53, 35, 104),
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                            vertical: 30, horizontal: 12),
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(101, 238, 236, 236),
                          borderRadius: BorderRadius.circular(12),
                          border: Border.all(color: primaryColor),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Icon(
                              Icons.phone,
                              color: primaryColor,
                            ),
                            verticalSpace(20),
                            Text(
                              "Phone Number",
                              style: GoogleFonts.poppins(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            verticalSpaceTiny,
                            Text(
                              "Send to your phone",
                              style: GoogleFonts.poppins(
                                fontSize: 11,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              verticalSpaceLarge,
              Button(
                onPressed: () => viewModel.goToFPWEmaile(),
                buttonContent: Text(
                  "Continue",
                  style: GoogleFonts.poppins(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  ForgetPasswordViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      ForgetPasswordViewModel();
}
