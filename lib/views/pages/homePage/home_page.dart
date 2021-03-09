import 'package:flutter/material.dart';
import 'package:my_fairfield_library/db/datastores/book_datastore.dart';
import 'package:my_fairfield_library/models/book.dart';
import 'package:my_fairfield_library/test/test_data.dart';

class HomePage {
  Widget _page;
  List<Book> bookList;

  Future<void> getBooks() async {
    bookList = await books();
  }

  HomePage(BuildContext context) {
    _page = _createPage(context);
  }

  Widget _createPage(BuildContext context) {
    return Center(
        child: Column(
            children: <Widget>[
              Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      child: ElevatedButton(
                          child: Text('Load Book Test Data'),
                          onPressed: () {
                            addTestData();
                            getBooks();
                          }
                      ),
                      width: MediaQuery.of(context).size.width * 0.5,
                    )
                  ]
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: _getBookRows(bookList, context),
              ),
        ]
      ),
    );
  }

  Widget get() {
    return _page;
  }

  List<Widget> _getBookRows(List<Book> listOfBooks, BuildContext context) {
    List<Widget> widgets = [];
    if (listOfBooks != null) {
      listOfBooks.forEach((book) {
        widgets.add(_getBookRow(book, context));
      });
    }
    return widgets;
  }

  Widget _getBookRow(Book book, BuildContext context) {
    return Text(
      book.title,
      style: Theme.of(context).textTheme.headline4,
    );
  }
}
