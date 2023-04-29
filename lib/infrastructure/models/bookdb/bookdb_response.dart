

import 'book_bookdb.dart';

class BookDbResponse {
    final String kind;
    final int totalBooks;
    final List<BookBookDB> books;

    BookDbResponse({
        required this.kind,
        required this.totalBooks,
        required this.books,
    });

    factory BookDbResponse.fromJson(Map<String, dynamic> json) => BookDbResponse(
        kind: json["kind"],
        totalBooks: json["totalBooks"],
        books: List<BookBookDB>.from(json["books"].map((x) => BookBookDB.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "kind": kind,
        "totalBooks": totalBooks,
        "books": List<dynamic>.from(books.map((x) => x.toJson())),//dynamic?
    };
}





