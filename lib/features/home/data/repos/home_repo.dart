import 'package:book_store/core/errors/faliuers.dart';
import 'package:book_store/features/home/data/models/book_model/book_model.dart';
import 'package:dartz/dartz.dart';
import 'package:get_it/get_it.dart';

abstract class HomeRepo {
  Future<Either<Failure, List<BookModel>>> fetchNewestBooks();
  Future<Either<Failure, List<BookModel>>> fetchFeaturedBooks();
  Future<Either<Failure, List<BookModel>>> fetchSimilarBooks({required String category});
  // Future<Either<Failure, List<BookModel>>> fetchSearchBooks(String query);
}
