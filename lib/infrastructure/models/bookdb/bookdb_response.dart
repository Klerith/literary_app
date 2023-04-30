

import 'book_bookdb.dart';

class BookDbResponse {
    final String kind;
    final double totalItems;
    final List<BookBookDB> items;

    BookDbResponse({
        required this.kind,
        required this.totalItems,
        required this.items,
    });

    factory BookDbResponse.fromJson(Map<String, dynamic> json) => BookDbResponse(
        kind: json["kind"],
        totalItems: double.parse(json["totalItems"].toString()),
        items: List<BookBookDB>.from(json["items"].map((x) => BookBookDB.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "kind": kind,
        "totalBooks": totalItems,
        "items": List<dynamic>.from(items.map((x) => x.toJson())),//dynamic?
    };
}





