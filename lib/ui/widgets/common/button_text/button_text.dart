import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stacked/stacked.dart';

import 'button_text_model.dart';

class ButtonText extends StackedView<ButtonTextModel> {
  const ButtonText(
      {required this.onPressed,
      required this.text,
      this.textColor,
      this.fontWeight,
      required this.fontSize,
      super.key});

  final void Function()? onPressed;
  final String text;
  final Color? textColor;
  final double fontSize;
  final FontWeight? fontWeight;

  @override
  Widget builder(
    BuildContext context,
    ButtonTextModel viewModel,
    Widget? child,
  ) {
    return TextButton(
      onPressed: onPressed,
      child: Text(
        text,
        style: GoogleFonts.poppins(
          fontSize: fontSize,
          fontWeight: fontWeight,
          color: textColor,
        ),
      ),
    );
  }

  @override
  ButtonTextModel viewModelBuilder(
    BuildContext context,
  ) =>
      ButtonTextModel();
}
