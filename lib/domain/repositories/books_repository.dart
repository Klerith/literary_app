import '../entities/book/book.dart';

abstract class BookRepository {
  
  Future<List<Book>> getNowReading({int addBooks = 1});  

}