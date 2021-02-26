import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_fairfield_library/routes/manual_lookup_route.dart';

class MenuDrawer {

  static final MenuDrawer _singleton = MenuDrawer._internal();
  static Widget _menu;

  factory MenuDrawer(BuildContext context){
    _menu = _getMenu(context);
    return _singleton;
  }
  MenuDrawer._internal();

  static Widget _getMenu(BuildContext context){
    return Scaffold(
        appBar: AppBar(
          title: Text("My Fairfield Library"),
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
                onTap: () {
                  // Update the state of the app
                  // ...
                  // Then close the drawer
                  Navigator.pop(context);
                  Navigator.push(context, MaterialPageRoute(builder: (context) => ManualLookupRoute()));
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
    );
  }
  Widget get(){
    return _menu;
  }
}