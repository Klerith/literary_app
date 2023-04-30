import 'package:literary_app/domain/entities/book/book.dart';
import 'package:literary_app/infrastructure/models/bookdb/book_bookdb.dart';

import '../../domain/entities/book/book_details.dart';
class BookMapper {
  static Book bookDBToEntity(BookBookDB bookdb) => Book(
      kind: bookdb.kind,
      id: bookdb.id,
      etag: bookdb.etag,
      selfLink: bookdb.selfLink,
      volumeInfo: BookDetails(
        title: bookdb.volumeInfo.title,
        authors: bookdb.volumeInfo.authors,
        publisher: bookdb.volumeInfo.publisher,
        publishedDate: bookdb.volumeInfo.publishedDate,
        description: bookdb.volumeInfo.description,
        pageCount: bookdb.volumeInfo.pageCount,
        categories: bookdb.volumeInfo.categories,
        averageRating: bookdb.volumeInfo.averageRating,
        ratingsCount: bookdb.volumeInfo.ratingsCount,
        imageLinks: (bookdb.volumeInfo.imageLinks != '') 
        ? 'http://books.google.com/books/publisher/content?printsec=frontcover&img=1&zoom=6&edge=curl&imgtk=AFLRE73sdPygXpheTluPsvVVEpeQEIlEXFH3J8RF7Q40ZDR1xdLGcX2C5FlZpuhtpAeZjGfr9YG6RLT8jAEIFib3kuU5z4ylGhlsU_cQrFo_iDQjUEsCoKc6b6DgQRISe_l0Gqbdhg-5&source=gbs_api&id=${bookdb.volumeInfo.imageLinks}'
        : 'no-poster',
        language: bookdb.volumeInfo.language, 
        contentVersion: bookdb.volumeInfo.contentVersion, 
        maturityRating: bookdb.volumeInfo.maturityRating, 
        subtitle: bookdb.volumeInfo.subtitle,
      ),
  );
}