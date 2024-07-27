import 'package:bookly_app/features/home/domain/entities/book_entity.dart';

abstract class HomeLocalDataSource {
  List<BookEntity> fetchBooksListView();
  List<BookEntity> fetchBestSellerListView();
}

class HomeLocalDataSourceImpl extends HomeLocalDataSource {
  @override
  List<BookEntity> fetchBestSellerListView() {
    // TODO: implement fetchBestSellerListView
    throw UnimplementedError();
  }

  @override
  List<BookEntity> fetchBooksListView() {
    // TODO: implement fetchBooksListView
    throw UnimplementedError();
  }
}
