import 'package:bookly_app/core/class/api_service.dart';
import 'package:bookly_app/core/constants/end_points.dart';
import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/features/home/domain/entities/book_entity.dart';

abstract class HomeRemoteDataSource {
  Future<List<BookEntity>> fetchBooksListView();
  Future<List<BookEntity>> fetchBestSellerListView();
}

class HomeRemoteDataSourceImpl extends HomeRemoteDataSource {
  final ApiService apiService;

  HomeRemoteDataSourceImpl({required this.apiService});
  @override
  Future<List<BookEntity>> fetchBestSellerListView() async {
    var data = await apiService.get(url: EndPoints.fetchBooksEndPoint);
    List<BookEntity> books = [];
    for (var book in data) {
      books.add(BookModel.fromJson(book));
    }
    return books;
  }

  @override
  Future<List<BookEntity>> fetchBooksListView() {
    // TODO: implement fetchBooksListView
    throw UnimplementedError();
  }
}
