import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_fairfield_library/views/pages/homePage/home_page.dart';
import 'package:my_fairfield_library/views/menus/menu_drawer.dart';

class HomeRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Fairfield Library'),
      ),
      drawer: MenuDrawer(context).get(),
      body: HomePage(context).get(),
    );
  }
}
