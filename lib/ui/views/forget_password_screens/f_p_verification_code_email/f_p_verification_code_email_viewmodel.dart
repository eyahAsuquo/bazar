import 'package:bazar/app/app.locator.dart' show locator;
import 'package:bazar/app/app.router.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class FPVerificationCodeEmailViewModel extends BaseViewModel {
  final _navigationService = locator<NavigationService>();

  void goToFPNewPasswordPage() {
    _navigationService.navigateToFPCreateNewPasswordView();
  }
}
