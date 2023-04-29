
class BookBookDetailsDB {
    final String title;
    final String isbn;
    final List<String> authors;
    final DateTime publisher;
    final DateTime publishedDate;
    final String description;
    final String industryIdentifiers;
    final int pageCount;
    final List<String> categories;
    final int averageRating;
    final int ratingsCount;
    final String maturityRating;
    final String contentVersion;
    final String imageLinks;
    final String language;
    final String? subtitle;

    BookBookDetailsDB({
        required this.title,
        required this.isbn,
        required this.authors,
        required this.publisher,
        required this.publishedDate,
        required this.description,
        required this.industryIdentifiers,
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

    factory BookBookDetailsDB.fromJson(Map<String, dynamic> json) => BookBookDetailsDB(
        title: json["title"],
        authors: List<String>.from(json["authors"].map((x) => x)),
        isbn: json["isbn"],
        publisher: json["publisher"],
        publishedDate:DateTime.parse(json["publishedDate"]),
        description: json["description"],
        industryIdentifiers: json["industryIdentifiers"],
        pageCount: json["pageCount"],
        categories: List<String>.from(json["categories"].map((x) => x)),
        maturityRating: json["maturityRating"]!,
        contentVersion: json["contentVersion"],
        imageLinks: json["imageLinks"],//cuidado
        language: json["language"],
        subtitle: json["subtitle"],
        averageRating: json["averageRating"]?.toDouble(),
        ratingsCount: json["ratingsCount"],
    );

    Map<String, dynamic> toJson() => {
        "title": title,
        "authors": List<dynamic>.from(authors.map((x) => x)),
        "publisher": publisher,
        "publishedDate": "${publishedDate.year.toString().padLeft(4, '0')}-${publishedDate.month.toString().padLeft(2, '0')}-${publishedDate.day.toString().padLeft(2, '0')}",
        "description": description,
        "industryIdentifiers": industryIdentifiers,
        "pageCount": pageCount,
        "maturityRating": maturityRating,
        "contentVersion": contentVersion,
        "imageLinks": imageLinks,
        "language": language,
        "subtitle": subtitle,
        "averageRating": averageRating,
        "ratingsCount": ratingsCount,
    };
}
