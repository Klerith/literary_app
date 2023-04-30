import 'book_book_detailsdb.dart';

class BookBookDB {
    final String kind;
    final String id;
    final String etag;
    final String selfLink;
    final BookBookDetailsDB volumeInfo;

    BookBookDB({
        required this.kind,
        required this.id,
        required this.etag,
        required this.selfLink,
        required this.volumeInfo,
    });

    factory BookBookDB.fromJson(Map<String, dynamic> json) => BookBookDB(
        kind: json["kind"],
        id: json["id"],
        etag: json["etag"],
        selfLink: json["selfLink"],
        volumeInfo: BookBookDetailsDB.fromJson(json["volumeInfo"]),
    );

    Map<String, dynamic> toJson() => {
        "kind": kind,
        "id": id,
        "etag": etag,
        "selfLink": selfLink,
        "volumeInfo": volumeInfo.toJson(),
    };
}