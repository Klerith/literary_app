import '../entities/book/book.dart';

abstract class BooksRepository {
  
  Future<List<Book>> getNowReading({int addBooks = 1});  

}