import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'text_form_model.dart';

class TextForm extends StackedView<TextFormModel> {
  const TextForm(
      {required this.hintText,
      required this.obscureText,
      this.keyboardType,
      required this.controler,
      this.validator,
      this.suffixIcon,
      super.key});

  final String hintText;
  final bool obscureText;
  final TextInputType? keyboardType;
  final TextEditingController controler;
  final FormFieldValidator? validator;
  final Widget? suffixIcon;

  @override
  Widget builder(
    BuildContext context,
    TextFormModel viewModel,
    Widget? child,
  ) {
    return TextFormField(
      validator: validator,
      obscureText: obscureText,
      controller: controler,
      decoration: InputDecoration(
          suffixIcon: suffixIcon,
          hintText: hintText,
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
    );
  }

  @override
  TextFormModel viewModelBuilder(
    BuildContext context,
  ) =>
      TextFormModel();
}
