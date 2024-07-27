import 'package:bookly_app/features/home/domain/entities/book_entity.dart';

abstract class HomeRepo {
  Future<List<BookEntity>> fetchBooksListView();
  Future<List<BookEntity>> fetchBestSellerListView();
}
