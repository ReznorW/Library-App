import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_fairfield_library/views/pages/map/map_page.dart';
import 'package:my_fairfield_library/views/menus/menu_drawer.dart';

class MapRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Map'),
      ),
      drawer: MenuDrawer(context).get(),
      body: MapPage(context).get(),
    );
  }
}
