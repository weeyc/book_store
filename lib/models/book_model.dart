class BookModel {
  final String title;
  final int authorId;
  final String authorName;
  final String bookCoverUrl;
  final String categoryName;
  final int categoryId;

  BookModel({
    required this.title,
    required this.authorId,
    required this.authorName,
    required this.bookCoverUrl,
    required this.categoryName,
    required this.categoryId,
  });

  factory BookModel.fromJson(Map<String, dynamic> json) {
    return BookModel(
      title: json['title'],
      authorId: json['authorId'],
      authorName: json['authorName'],
      bookCoverUrl: json['bookCoverUrl'],
      categoryName: json['categoryName'],
      categoryId: json['categoryId'],
    );
  }
}
