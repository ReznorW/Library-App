import 'package:flutter/material.dart';
import 'package:my_fairfield_library/models/book.dart';

// For tips on how to modify the display after searching
// https://stackoverflow.com/questions/59334552/flutter-change-text-when-button-pressed

class ManualLookupPage {
  Widget _page;
  TextEditingController _searchController = new TextEditingController();
  List<Book> _bookList;

  ManualLookupPage(BuildContext context, List<Book> books) {
    _bookList = books;
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
                  child: TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none, hintText: 'Enter a search term'),
                  ),
                  width: MediaQuery.of(context).size.width * 0.5,
                ),
                Container(
                  child: ElevatedButton(
                    child: Text('Search'),
                    onPressed: () {

                    }
                  ),
                  width: MediaQuery.of(context).size.width * 0.25,
                )
              ]
          ),
          Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  child: Text(_searchController.text),
                ),
          ]),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: _getBookRows(_bookList, context),
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

  List<String> getBookRowsString(List<Book> listOfBooks, BuildContext context) {
    List<String> bookNames = [];
    if (listOfBooks != null) {
      listOfBooks.forEach((book) {
        bookNames.add(book.title);
      });
    }
    return bookNames;
  }

  List<String> getManualLookup(String searchedTerm, BuildContext context) {
    List<String> books = getBookRowsString(_bookList, context);
    for (var curBook in books) {
      if (curBook.contains(searchedTerm)) {
        //Add a curBook to widget list then return
      }
    }
  }
}
