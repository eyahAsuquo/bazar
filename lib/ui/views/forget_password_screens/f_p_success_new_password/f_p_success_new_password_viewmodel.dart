import 'package:bazar/app/app.locator.dart';
import 'package:bazar/app/app.router.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class FPSuccessNewPasswordViewModel extends BaseViewModel {
  final _navigationService = locator<NavigationService>();

  void goToSignInPage() {
    _navigationService.replaceWithSignInView();
  }
}
