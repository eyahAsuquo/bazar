import 'package:bazar/app/app.locator.dart';
import 'package:bazar/app/app.router.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class SuccessViewModel extends BaseViewModel {
  final _navigationService = locator<NavigationService>();

  void goToHomePage() {
    _navigationService.replaceWithHomeView();
  }
}
