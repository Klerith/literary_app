import 'package:dio/dio.dart';

import 'package:literary_app/config/constants/environment.dart';
import 'package:literary_app/domain/datasources/books_datasource.dart';


import 'package:literary_app/domain/entities/book/book.dart';
import 'package:literary_app/infrastructure/mappers/book_mapper.dart';
import 'package:literary_app/infrastructure/models/bookdb/bookdb_response.dart';

class BookdbDatasource extends BooksDatasource {

  final dio = Dio(
    BaseOptions(
      baseUrl: 'https://www.googleapis.com/books/v1',
      queryParameters: {
        'key':Environment.theBookKey,
      }
    )
  );

  @override
  Future<List<Book>> getNowReading({int addBooks = 1}) async {
    
    final response = await dio.get('/volumes',queryParameters: {
      'q': 'newest',
      'orderBy': 'newest',
      'maxResults': '10',
    });

    final bookDBResponse = BookDbResponse.fromJson(response.data);

    final List<Book> books = bookDBResponse.items
    .where((bookdb) => bookdb.volumeInfo.imageLinks != 'no-poster')
    .map(
      (bookdb) => BookMapper.bookDBToEntity(bookdb)
      ).toList();

    return books;
  }

}