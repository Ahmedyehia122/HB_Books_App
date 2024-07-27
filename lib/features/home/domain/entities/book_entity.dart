class BookEntity {
  final String? image;
  final String? bookTitle;
  final String? authorName;
  final num? price;
  final int? reviews;

  BookEntity(
      {required this.image,
      required this.bookTitle,
      required this.authorName,
      required this.price,
      required this.reviews});
}
