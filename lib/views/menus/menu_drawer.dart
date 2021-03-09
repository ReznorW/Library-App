import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_fairfield_library/views/routes/camera_route.dart';
import 'package:my_fairfield_library/views/routes/home_route.dart';
import 'package:my_fairfield_library/views/routes/manual_lookup_route.dart';
import 'package:my_fairfield_library/views/routes/map_route.dart';

class MenuDrawer {
  static final MenuDrawer _singleton = MenuDrawer._internal();
  static Widget _menu;

  factory MenuDrawer(BuildContext context) {
    _menu = _getMenu(context);
    return _singleton;
  }

  MenuDrawer._internal();

  static Widget _getMenu(BuildContext context) {
    return Drawer(
      child: ListView(
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
            title: Text('Home'),
            subtitle: Text('Return to the home page'),
            leading: Icon(Icons.home_outlined),
            onTap: () {
              Navigator.pop(context);
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => HomeRoute()
                  ),
              );
            },
          ),
          ListTile(
            title: Text('Barcode Scanner'),
            subtitle: Text('Scan the barcode of a book.'),
            leading: Icon(Icons.camera_alt_outlined),
            onTap: () {
              Navigator.pop(context);
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => CameraRoute()
                  ),
              );
            },
          ),
          ListTile(
            title: Text('Manual Lookup'),
            subtitle: Text('Manually find a book.'),
            leading: Icon(Icons.article_outlined),
            onTap: () {
              Navigator.pop(context);
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => ManualLookupRoute()
                  ),
              );
            },
          ),
          ListTile(
            title: Text('Map'),
            subtitle: Text('Open the library map.'),
            leading: Icon(Icons.map),
            onTap: () {
              Navigator.pop(context);
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => MapRoute()
                  ),
              );
            },
          ),
        ],
      ),
    );
  }

  Widget get() {
    return _menu;
  }
}
