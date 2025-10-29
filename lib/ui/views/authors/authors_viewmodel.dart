import 'package:bazar/app/app.locator.dart';
import 'package:bazar/ui/models/author_model.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class AuthorsViewModel extends BaseViewModel {
  final _navigation = locator<NavigationService>();
  final List<Author> authors;

  // void goToAuthors() {
  //   _navigation.navigateToAuthorsView(authors: []);
  // }

  AuthorsViewModel(this.authors);
}
