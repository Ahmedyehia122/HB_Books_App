import 'package:hive/hive.dart';
part 'book_entity.g.dart';

@HiveType(typeId: 0)
class BookEntity {
  @HiveField(0)
  final String? image;
  @HiveField(1)
  final String? bookTitle;
  @HiveField(2)
  final String? authorName;
  @HiveField(3)
  final num? price;
  @HiveField(4)
  final int? reviews;

  BookEntity(
      {required this.image,
      required this.bookTitle,
      required this.authorName,
      required this.price,
      required this.reviews});
}
