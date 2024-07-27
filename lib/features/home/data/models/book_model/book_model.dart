import 'package:bookly_app/features/home/domain/entities/book_entity.dart';

class BookModel extends BookEntity {
  int? number;
  String? title;
  String? originalTitle;
  String? releaseDate;
  String? description;
  int? pages;
  String? cover;
  int? index;

  BookModel({
    this.number,
    this.title,
    this.originalTitle,
    this.releaseDate,
    this.description,
    this.pages,
    this.cover,
    this.index,
  }) : super(
            image: cover,
            bookTitle: title,
            authorName: releaseDate,
            price: pages,
            reviews: pages);

  factory BookModel.fromJson(Map<String, dynamic> json) => BookModel(
        number: json['number'] as int?,
        title: json['title'] as String?,
        originalTitle: json['originalTitle'] as String?,
        releaseDate: json['releaseDate'] as String?,
        description: json['description'] as String?,
        pages: json['pages'] as int?,
        cover: json['cover'] as String?,
        index: json['index'] as int?,
      );

  Map<String, dynamic> toJson() => {
        'number': number,
        'title': title,
        'originalTitle': originalTitle,
        'releaseDate': releaseDate,
        'description': description,
        'pages': pages,
        'cover': cover,
        'index': index,
      };
}
