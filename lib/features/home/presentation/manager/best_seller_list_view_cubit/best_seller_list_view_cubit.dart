import 'package:bloc/bloc.dart';
import 'package:bookly_app/features/home/domain/entities/book_entity.dart';
import 'package:bookly_app/features/home/domain/use_cases/fetch_best_seller_list_view_use_case.dart';
import 'package:meta/meta.dart';

part 'best_seller_list_view_state.dart';

class BestSellerListViewCubit extends Cubit<BestSellerListViewState> {
  BestSellerListViewCubit(this.fetchBestSellerListViewUseCase)
      : super(BestSellerListViewInitial());

  final FetchBestSellerListViewUseCase fetchBestSellerListViewUseCase;

  Future<void> fetchBestSellerListView() async {
    emit(BestSellerListViewLoading());

    var result = await fetchBestSellerListViewUseCase.call();
    result.fold(
      (failure) {
        emit(BestSellerListViewFailure(errMessage: failure.errMessage));
      },
      (books) {
        emit(BestSellerListViewSuccess(books: books));
      },
    );
  }
}
