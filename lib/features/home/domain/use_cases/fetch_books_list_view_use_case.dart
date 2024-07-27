import 'package:bookly_app/core/errors/failures.dart';
import 'package:bookly_app/features/home/domain/entities/book_entity.dart';
import 'package:bookly_app/features/home/domain/repos/home_repo.dart';
import 'package:dartz/dartz.dart';

class FetchBooksListViewUseCase {
  final HomeRepo homeRepo;

  FetchBooksListViewUseCase({required this.homeRepo});

  Future<Either<Failure, List<BookEntity>>> fetchBooksListView() {
    return homeRepo.fetchBooksListView();
  }
}
