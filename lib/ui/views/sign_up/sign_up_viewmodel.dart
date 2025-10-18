import 'package:bazar/app/app.locator.dart';
import 'package:bazar/app/app.router.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class SignUpViewModel extends BaseViewModel {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  TextEditingController nameControler = TextEditingController();
  TextEditingController emailControler = TextEditingController();
  TextEditingController passwordControler = TextEditingController();

  final _navigationService = locator<NavigationService>();

  bool obscureText = true;

  void showPassword() {
    obscureText = !obscureText;
    rebuildUi();
  }

  void goToEmailVerificationPage() {
    if (formKey.currentState!.validate()) {
      _navigationService.navigateToEmailVerificationView();
    } else {
      return;
    }
  }

  void goToLogInPage() {
    _navigationService.navigateToSignInView();
  }
}
