import '../entities/book/book.dart';

abstract class BooksDatasource {
  
  Future<List<Book>> getNowReading({int addBooks = 1});  

}