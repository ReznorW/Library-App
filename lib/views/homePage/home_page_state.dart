import 'package:flutter/material.dart';
import 'package:my_fairfield_library/db/book_database.dart';
import 'package:my_fairfield_library/db/my_fairfield_library_database.dart';
import 'package:my_fairfield_library/models/book.dart';
import 'package:my_fairfield_library/test/test_data.dart';

import 'home_page.dart';

class HomePageState extends State<HomePage> {
  List<Book> bookList;

  Future<void> getBooks() async {
    bookList = await books();
  }

  HomePageState(){
    getBooks();
  }

  TextEditingController searchController = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      drawer: Drawer(
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: null,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/the_lane.png'),
                    fit: BoxFit.fill
                ),
              ),
            ),
            ListTile(
              title: Text('Barcode Scanner'),
              subtitle: Text('Scan the barcode of a book.'),
              leading: Icon(
                  Icons.camera_alt_outlined
              ),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('Manual Lookup'),
              subtitle: Text('Manually find a book.'),
              leading: Icon(
                  Icons.article_outlined
              ),
              onTap: (

                  ) {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('Map'),
              subtitle: Text('Open the library map.'),
              leading: Icon(
                  Icons.map
              ),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
        Container(
          child: TextField(
            controller: searchController,
            decoration: InputDecoration(
            border: InputBorder.none,
            hintText: 'Enter a search term'),
      ),width: MediaQuery.of(context).size.width * 0.5,
    ),
  ]),
        Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                child: Text(searchController.text),
              ),
            ]),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: getBookRows(bookList, context),

          // Column is also a layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Invoke "debug painting" (press "p" in the console, choose the
          // "Toggle Debug Paint" action from the Flutter Inspector in Android
          // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
          // to see the wireframe for each widget.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          ),
        ]),
      )
    );
  }

  List<Widget> getBookRows(List<Book> listOfBooks, BuildContext context){
    List<Widget> widgets = new List<Widget>();
    if (listOfBooks != null) {
      listOfBooks.forEach((book) {
        widgets.add(getBookRow(book, context));
      });
    }
    return widgets;
  }
  Widget getBookRow(Book book, BuildContext context){
    return Text(
      book.title,
      style: Theme.of(context).textTheme.headline4,
    );
  }
  List<String> getBookRowsString(List<Book> listOfBooks, BuildContext context){
    List<String> bookNames = new List<String>();
    if (listOfBooks != null) {
      listOfBooks.forEach((book) {
        bookNames.add(book.title);
      });
    }
    return bookNames;
  }
  List<String> getManualLookup(String searchedTerm, BuildContext context){
    List<String> books = getBookRowsString(bookList, context);
    for (var curBook in books) {
      if(curBook.contains(searchedTerm)){
        //Add a curBook to widget list then return
      }
    }
  }
}
