import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_fairfield_library/db/datastores/book_datastore.dart';
import 'package:my_fairfield_library/models/book.dart';
import 'package:my_fairfield_library/views/pages/manual_lookup/manual_lookup_page.dart';
import 'package:my_fairfield_library/views/menus/menu_drawer.dart';

class ManualLookupRoute extends StatelessWidget {

  Future<List<Book>> _getBooks() async {
    return await books();
  }

  @override
  Widget build(BuildContext context) => FutureBuilder(
    future: _getBooks(),
    builder: (context, AsyncSnapshot<List<Book>> snapshot) {
      if (snapshot.hasData) {
        return _getManualLookupPage(context, snapshot.data);
      } else {
        return CircularProgressIndicator();
      }
    },
  );

  Widget _getManualLookupPage(BuildContext context, List<Book> books) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Manual Lookup'),
      ),
      drawer: MenuDrawer(context).get(),
      body: ManualLookupPage(context, books).get(),
    );
  }
}
