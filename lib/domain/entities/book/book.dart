
import 'book_details.dart';

class Book {
    final String kind;
    final String id;
    final String etag;
    final String selfLink;
    final BookDetails volumeInfo;
    final String searchInfo;

    Book({
        required this.kind,
        required this.id,
        required this.etag,
        required this.selfLink,
        required this.volumeInfo,
        required this.searchInfo,
    });
}
