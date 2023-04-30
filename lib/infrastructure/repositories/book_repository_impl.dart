

import 'package:literary_app/domain/datasources/books_datasource.dart';
import 'package:literary_app/domain/entities/book/book.dart';
import 'package:literary_app/domain/repositories/books_repository.dart';

class BookRepositoryImpl extends BooksRepository {

  final BooksDatasource datasource;

  BookRepositoryImpl(this.datasource);

  @override
  Future<List<Book>> getNowReading({int addBooks = 1}) {
    
    return datasource.getNowReading(addBooks: 1);

  }


}