import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_fairfield_library/views/manual_lookup/manual_lookup_page.dart';
import 'package:my_fairfield_library/views/menu/menu_drawer.dart';

class ManualLookupRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Map'),
      ),
        drawer: MenuDrawer(context).get(),
      body: ManualLookupPage(context).get(),
    );
  }
}