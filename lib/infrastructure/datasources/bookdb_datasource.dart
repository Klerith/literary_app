import 'package:dio/dio.dart';
import 'package:literary_app/config/constants/environment.dart';


import 'package:literary_app/domain/datasources/books_datasource.dart';
import 'package:literary_app/domain/entities/book/book.dart';

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

    final List<Book> books = [];

    return books;
  }

}