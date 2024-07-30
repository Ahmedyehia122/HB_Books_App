import 'package:bookly_app/core/constants/routes.dart';
import 'package:bookly_app/features/home/domain/entities/book_entity.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/custom_book_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class CustomBooksListView extends StatelessWidget {
  const CustomBooksListView({super.key, required this.books});
  final List<BookEntity> books;

  @override
  Widget build(BuildContext context) {
    String testImage =
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRtiJKuQkGMitVsqqDyAppVphB6JCTlpEl8_tytAzIVrG-z5NgLGQcQb8uCeQDF7ueRI0w&usqp=CAU';
    return Padding(
      padding: EdgeInsets.only(top: 10.h, bottom: 40.h),
      child: SizedBox(
        height: 180.h,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          physics: const BouncingScrollPhysics(),
          itemCount: books.length,
          itemBuilder: (BuildContext context, int index) {
            return Padding(
              padding: EdgeInsets.only(right: 10.w),
              child: GestureDetector(
                onTap: () {
                  GoRouter.of(context)
                      .push(AppRoutes.kBookDetailsView, extra: books[index]);
                },
                child: CustomBookImage(
                  imageUrl: books[index].image ?? testImage,
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
