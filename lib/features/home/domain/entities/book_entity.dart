class BookEntity {
  final String image;
  final String title;
  final String authorName;
  final num price;
  final int reviews;

  BookEntity(
      {required this.image,
      required this.title,
      required this.authorName,
      required this.price,
      required this.reviews});
}
