import 'package:flutter/material.dart';
import 'package:my_fairfield_library/db/my_fairfield_library_database.dart';
import 'package:my_fairfield_library/test/test_data.dart';
import 'package:my_fairfield_library/views/my_home_page.dart';

import 'db/book_database.dart';
import 'models/book.dart';

void main() async {
  MyFairfieldLibraryDatabase();

  runApp(MyHomePage());
}




