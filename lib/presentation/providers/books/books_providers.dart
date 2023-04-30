

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:literary_app/presentation/providers/books/books_repository_provider.dart';

import '../../../domain/entities/book/book.dart';

final nowReadingBooksProvider = StateNotifierProvider<BooksNotifier,List<Book>>((ref){

  final fetchMoreBooks = ref.watch( bookRepositoryProvider ).getNowReading;

  return BooksNotifier(fetchMoreBooks);
});

typedef BookCallback = Future<List<Book>> Function({int addBooks});

class BooksNotifier extends StateNotifier<List<Book>> {

  int currentBooks = 10;
  BookCallback fetchMoreBooks;

  BooksNotifier(
    this.fetchMoreBooks
  ): super([]);

  Future<void> loadNextBooks() async {

    currentBooks++;

    final List<Book> books = await fetchMoreBooks (addBooks: currentBooks);

    state = [...state, ...books];

  }

}