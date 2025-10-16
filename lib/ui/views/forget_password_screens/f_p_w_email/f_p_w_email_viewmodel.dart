import 'package:bazar/app/app.locator.dart';
import 'package:bazar/app/app.router.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class FPWEmailViewModel extends BaseViewModel {
  final _navigationService = locator<NavigationService>();

  void goToFPVerificationEmail() {
    _navigationService.navigateToFPVerificationCodeEmailView();
  }
}
