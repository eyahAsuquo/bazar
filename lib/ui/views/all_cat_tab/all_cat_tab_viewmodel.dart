import 'package:bazar/app/app.locator.dart';
import 'package:bazar/services/book_service.dart';
import 'package:bazar/ui/models/book_model.dart';
import 'package:stacked/stacked.dart';

class AllCatTabViewModel extends BaseViewModel {
  final _bookService = locator<BookService>();
  List<Book> get books => _bookService.books;
}
