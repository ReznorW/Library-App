import 'dart:async';

import 'package:flutter/widgets.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class MyFairfieldLibraryDatabase {
  static final MyFairfieldLibraryDatabase _singleton = MyFairfieldLibraryDatabase._internal();

  static Database _database;

  factory MyFairfieldLibraryDatabase(){
    openMyFairfieldLibraryDatabase().then((value) => _database = value);
    return _singleton;
  }

  MyFairfieldLibraryDatabase._internal();

  static Future<Database> openMyFairfieldLibraryDatabase() async {
    WidgetsFlutterBinding.ensureInitialized();
    final Future<Database> database = openDatabase(
      join(await getDatabasesPath(), 'my_fairfield_library_database.db'),
      onCreate: (db, version) {
        return db.execute(getCreateDatabaseString());
      },
      version: 1,
    );
    return database;
  }

  static String getCreateDatabaseString() {
    return "CREATE TABLE books(id INTEGER PRIMARY KEY, title TEXT)";
  }

  Database getDatabase(){
    return MyFairfieldLibraryDatabase._database;
  }
}
