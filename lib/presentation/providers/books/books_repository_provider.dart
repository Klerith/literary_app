import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:literary_app/infrastructure/datasources/bookdb_datasource.dart';
import 'package:literary_app/infrastructure/repositories/book_repository_impl.dart';




// Este repositorio es inmutable
final bookRepositoryProvider = Provider((ref) {

  return BookRepositoryImpl(BookdbDatasource());

});