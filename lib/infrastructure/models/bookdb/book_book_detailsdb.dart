
class BookBookDetailsDB {
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

    BookBookDetailsDB({
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

    factory BookBookDetailsDB.fromJson(Map<String, dynamic> json) => BookBookDetailsDB(
        title: json["title"],
        authors: List<String>.from(json["authors"].map((x) => x)),
        publisher: json["publisher"] ?? '',
        publishedDate:json["publishedDate"],
        description: json["description"] ?? '',
        pageCount: json["pageCount"],
        categories: List<String>.from(json["categories"].map((x) => x)),
        maturityRating: json["maturityRating"],
        contentVersion: json["contentVersion"],
        imageLinks: json["imageLinks"]["thumbnail"],//cuidado
        language: json["language"],
        subtitle: json["subtitle"] ?? '',
        averageRating: json["averageRating"]?.toDouble() ?? 0.0,
        ratingsCount: json["ratingsCount"] ?? 0,
    );

    Map<String, dynamic> toJson() => {
        "title": title,
        "authors": List<dynamic>.from(authors.map((x) => x)),
        "publisher": publisher,
        "publishedDate": publishedDate,
        "description": description,
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

