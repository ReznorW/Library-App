import 'package:flutter/material.dart';
import 'package:my_fairfield_library/db/my_fairfield_library_database.dart';
import 'package:my_fairfield_library/test/test_data.dart';

import 'homePage/home_page.dart';

class MyHomePage extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,

        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomePage(title: 'My Fairfield Library'),
    );
  }
}
