part of 'best_seller_list_view_cubit.dart';

@immutable
sealed class BestSellerListViewState {}

final class BestSellerListViewInitial extends BestSellerListViewState {}

final class BestSellerListViewLoading extends BestSellerListViewState {}

final class BestSellerListViewSuccess extends BestSellerListViewState {
  final List<BookEntity> books;

  BestSellerListViewSuccess({required this.books});
}

final class BestSellerListViewFailure extends BestSellerListViewState {
  final String errMessage;

  BestSellerListViewFailure({required this.errMessage});
}
