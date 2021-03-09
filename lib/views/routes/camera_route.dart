import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_fairfield_library/views/menus/menu_drawer.dart';
import 'package:my_fairfield_library/views/pages/camera/camera_page.dart';

class CameraRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Barcode Scanner'),
      ),
      drawer: MenuDrawer(context).get(),
      body: CameraPage(context).get(),
    );
  }
}
