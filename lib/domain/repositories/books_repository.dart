import '../entities/book/book.dart';

abstract class BookRepository {
  
  Future<List<Book>> getNowPlaying({int page = 1});  

}