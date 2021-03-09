import 'package:flutter/material.dart';
import 'package:my_fairfield_library/views/routes/home_route.dart';

class MyFairfieldApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Fairfield Library',
      theme: ThemeData(
        primaryColor: Colors.black,
        primarySwatch: Colors.grey,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: new HomeRoute(),
    );
  }
}
