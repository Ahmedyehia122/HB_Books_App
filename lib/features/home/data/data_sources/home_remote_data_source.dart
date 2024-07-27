import 'package:bookly_app/features/home/domain/entities/book_entity.dart';

abstract class HomeRemoteDataSource {
  Future<List<BookEntity>> fetchBooksListView();
  Future<List<BookEntity>> fetchBestSellerListView();
}

class HomeRemoteDataSourceImpl extends HomeRemoteDataSource {
  @override
  Future<List<BookEntity>> fetchBestSellerListView() {
    // TODO: implement fetchBestSellerListView
    throw UnimplementedError();
  }

  @override
  Future<List<BookEntity>> fetchBooksListView() {
    // TODO: implement fetchBooksListView
    throw UnimplementedError();
  }
}
