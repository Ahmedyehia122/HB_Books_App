import 'package:bloc/bloc.dart';
import 'package:bookly_app/features/home/domain/entities/book_entity.dart';
import 'package:bookly_app/features/home/domain/use_cases/fetch_books_list_view_use_case.dart';
import 'package:meta/meta.dart';

part 'books_list_view_state.dart';

class BooksListViewCubit extends Cubit<BooksListViewState> {
  BooksListViewCubit(this.fetchBooksListViewUseCase)
      : super(BooksListViewInitial());
  final FetchBooksListViewUseCase fetchBooksListViewUseCase;
  Future<void> fetchBooksListView() async {
    emit(BooksListViewLoading());
    var result = await fetchBooksListViewUseCase.call();
    result.fold(
      (failure) {
        emit(BooksListViewFailure(errMessage: failure.errMessage));
      },
      (books) {
        emit(BooksListViewSuccess(books: books));
      },
    );
  }
}
