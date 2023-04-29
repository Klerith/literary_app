class BookDetails {
  final String title;
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
  final String imageLink;
  final String language;
  final String subtitle;

  BookDetails({
    required this.title,
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
    required this.imageLink,
    required this.language,
    required this.subtitle,
  });
}