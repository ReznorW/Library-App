import 'package:my_fairfield_library/db/book_database.dart';
import 'package:my_fairfield_library/models/book.dart';

void addTestData() async {
  await insertBook(Book(id: 0, title: "testBook1"));
  await insertBook(Book(id: 1, title: "testBook2"));
  await insertBook(Book(id: 2, title: "testBook3"));
  await insertBook(Book(id: 3, title: "testBook4"));
  await insertBook(Book(id: 4, title: "testBook5"));
  await insertBook(Book(id: 5, title: "testBook6"));
}