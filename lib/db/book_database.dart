import 'dart:async';

import 'package:flutter/widgets.dart';
import 'package:my_fairfield_library/db/my_fairfield_library_database.dart';
import 'package:my_fairfield_library/models/book.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

Future<void> insertBook(Book book) async {
  final Database db = await MyFairfieldLibraryDatabase().getDatabase();
  await db.insert(
    'books',
    book.toMap(),
    conflictAlgorithm: ConflictAlgorithm.replace,
  );
}
Future<List<Book>> books() async {
  final Database db = await MyFairfieldLibraryDatabase().getDatabase();
  final List<Map<String, dynamic>> maps = await db.query('books');
  return List.generate(maps.length, (i) {
    return Book(
      id: maps[i]['id'],
      title: maps[i]['title'],
    );
  });
} 