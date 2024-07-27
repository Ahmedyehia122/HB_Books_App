import 'package:bookly_app/app.dart';
import 'package:bookly_app/core/constants/hive_box.dart';
import 'package:bookly_app/features/home/domain/entities/book_entity.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';

void main() async {
  runApp(const BooklyApp());
  Hive.registerAdapter(BookEntityAdapter());
  Hive.openBox(HiveBox.kBooksListViewBox);
}
