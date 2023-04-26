

import 'image_links.dart';

class BookDetails {
    final String title;
    final String isbn;
    final List<String> authors;
    final String? publisher;
    final String publishedDate;
    final String? description;
    final String industryIdentifiers;
    final int pageCount;
    final List<String>? categories;
    final int? averageRating;
    final int? ratingsCount;
    final String maturityRating;
    final String contentVersion;
    final ImageLinks? imageLinks;
    final String language;
    final String? subtitle;

    BookDetails({
        required this.title,
        required this.isbn,
        required this.authors,
        this.publisher,
        required this.publishedDate,
        this.description,
        required this.industryIdentifiers,
        required this.pageCount,
        this.categories,
        this.averageRating,
        this.ratingsCount,
        required this.maturityRating,
        required this.contentVersion,
        this.imageLinks,
        required this.language,
        this.subtitle,
    });
}



