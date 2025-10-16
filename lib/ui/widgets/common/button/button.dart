import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'button_model.dart';

class Button extends StackedView<ButtonModel> {
  const Button(
      {required this.onPressed,
      required this.buttonContent,
      this.backgroundColor,
      this.foregroundColor,
      this.borderwidth,
      this.border,
      super.key});

  final void Function() onPressed;
  final Widget buttonContent;
  final Color? backgroundColor;
  final Color? foregroundColor;
  final double? borderwidth;
  final BorderSide? border;

  @override
  Widget builder(
    BuildContext context,
    ButtonModel viewModel,
    Widget? child,
  ) {
    return FilledButton(
      style: FilledButton.styleFrom(
        padding: const EdgeInsets.symmetric(vertical: 15),
        backgroundColor: backgroundColor,
        foregroundColor: foregroundColor,
        minimumSize: const Size(350, 50),
        side: border,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      onPressed: onPressed,
      child: buttonContent,
    );
  }

  @override
  ButtonModel viewModelBuilder(
    BuildContext context,
  ) =>
      ButtonModel();
}
