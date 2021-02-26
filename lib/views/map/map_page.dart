import 'package:flutter/material.dart';
import 'package:my_fairfield_library/db/book_database.dart';
import 'package:my_fairfield_library/models/book.dart';

class ManualLookupPage {

 Widget _page;
 TextEditingController searchController = new TextEditingController();
 List<Book> bookList;

 Future<void> getBooks() async {
   bookList = await books();
 }
 ManualLookupPage(BuildContext context){
   _page = _createpage(context);
 }
 Widget _createpage(BuildContext context){
   return Center(
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
   );
 }
 Widget get(){
   return _page;
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
