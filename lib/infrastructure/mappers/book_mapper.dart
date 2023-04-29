import 'package:literary_app/domain/entities/book/book.dart';
import 'package:literary_app/infrastructure/models/bookdb/book_bookdb.dart';

class bookMapper {
  static Book bookDBToEntity(BookBookDB bookdb) => Book(
      kind: bookdb.kind,
      id: bookdb.id,
      etag: bookdb.etag,
      selfLink: bookdb.selfLink,
      volumeInfo: bookdb.volumeInfo,
      searchInfo: bookdb.searchInfo);
}
