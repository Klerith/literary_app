import '../entities/book/book.dart';

abstract class BookDatasouerce {
  
  Future<List<Book>> getNowPlaying({int page = 1});  

}