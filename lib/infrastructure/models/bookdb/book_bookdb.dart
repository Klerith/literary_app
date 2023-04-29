import 'book_book_detailsdb.dart';

class BookBookDB {
    final String kind;
    final String id;
    final String etag;
    final String selfLink;
    final BookBookDetailsDB bookDetails;
    final String searchInfo;

    BookBookDB({
        required this.kind,
        required this.id,
        required this.etag,
        required this.selfLink,
        required this.bookDetails,
        required this.searchInfo,
    });

    factory BookBookDB.fromJson(Map<String, dynamic> json) => BookBookDB(
        kind: json["kind"],
        id: json["id"],
        etag: json["etag"],
        selfLink: json["selfLink"],
        bookDetails: BookBookDetailsDB.fromJson(json["bookDetails"]),
        searchInfo: json["searchInfo"],
    );

    Map<String, dynamic> toJson() => {
        "kind": kind,
        "id": id,
        "etag": etag,
        "selfLink": selfLink,
        "bookDetails": bookDetails.toJson(),
        "searchInfo": searchInfo,
    };
}