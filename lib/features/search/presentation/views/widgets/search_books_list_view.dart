import 'package:bookly_app/features/home/domain/entities/book_entity.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/book_list_view_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SearchBooksListView extends StatelessWidget {
  const SearchBooksListView({super.key, this.book});
  final BookEntity? book;

  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
      itemCount: 10,
      itemBuilder: (context, index) => Padding(
        padding: EdgeInsets.only(left: 20.w, right: 20.w, bottom: 20.h),
        child: BookListViewItem(
          book: book!,
        ),
      ),
    );
  }
}
