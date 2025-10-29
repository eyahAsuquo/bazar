import 'package:bazar/app/app.locator.dart';
import 'package:bazar/app/app.router.dart';
import 'package:bazar/ui/models/author_model.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class AllAuthorsTabViewModel extends BaseViewModel {
  final List<Author> authors;
  final _navigation = locator<NavigationService>();

  void goToAuthor(String name) {
    final author = authors.firstWhere((author) => author.name == name);

    _navigation.navigateToAuthorView(author: author);
  }

  AllAuthorsTabViewModel(this.authors);
}
