import 'package:bookly_app/core/constants/hive_box.dart';
import 'package:bookly_app/features/home/domain/entities/book_entity.dart';
import 'package:hive/hive.dart';

abstract class HomeLocalDataSource {
  List<BookEntity> fetchBooksListView();
  List<BookEntity> fetchBestSellerListView();
}

class HomeLocalDataSourceImpl extends HomeLocalDataSource {
  @override
  List<BookEntity> fetchBestSellerListView() {
    return fetchBooks(HiveBox.kBestSellerListViewBox);
  }

  @override
  List<BookEntity> fetchBooksListView() {
    return fetchBooks(HiveBox.kBooksListViewBox);
  }
}

List<BookEntity> fetchBooks(String boxName) {
  var box = Hive.box<BookEntity>(boxName);
  return box.values.toList();
}
