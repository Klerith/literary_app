class BookDetails {
  final String title;
  final List<String> authors;
  final String publisher;
  final String publishedDate;
  final String description;
  final int pageCount;
  final List<String> categories;
  final double averageRating;
  final int ratingsCount;
  final String maturityRating;
  final String contentVersion;
  final String imageLinks;
  final String language;
  final String subtitle;

  BookDetails({
    required this.title,
    required this.authors,
    required this.publisher,
    required this.publishedDate,
    required this.description,
    required this.pageCount,
    required this.categories,
    required this.averageRating,
    required this.ratingsCount,
    required this.maturityRating,
    required this.contentVersion,
    required this.imageLinks,
    required this.language,
    required this.subtitle,
  });
}

class IndustryIdentifier {
    final Type type;
    final String identifier;

    IndustryIdentifier({
        required this.type,
        required this.identifier,
    });
}

enum Type { ISBN_13, ISBN_10 }
final typeValues = EnumValues({
    "ISBN_10": Type.ISBN_10,
    "ISBN_13": Type.ISBN_13
});

class EnumValues<T> {
    Map<String, T> map;
    late Map<T, String> reverseMap;

    EnumValues(this.map);
}
