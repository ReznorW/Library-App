import 'package:flutter/material.dart';
import 'package:my_fairfield_library/db/my_fairfield_library_database.dart';
import 'package:my_fairfield_library/my_fairfield_app.dart';
import 'package:my_fairfield_library/test/test_data.dart';

void main() async {
  MyFairfieldLibraryDatabase();
  addTestData();
  runApp(MyFairfieldApp());
}
