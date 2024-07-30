import 'package:bookly_app/app.dart';
import 'package:bookly_app/core/constants/hive_box.dart';
import 'package:bookly_app/core/functions/service_locator.dart';
import 'package:bookly_app/features/home/domain/entities/book_entity.dart';
import 'package:bookly_app/core/utils/simble_bloc_observer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';

void main() async {
  Bloc.observer = SimbleBlocObserver();
  setupServiceLocator();
  await Hive.initFlutter();
  Hive.registerAdapter(BookEntityAdapter());
  await Hive.openBox<BookEntity>(HiveBox.kBooksListViewBox);
  await Hive.openBox<BookEntity>(HiveBox.kBestSellerListViewBox);
  runApp(const BooklyApp());
}
