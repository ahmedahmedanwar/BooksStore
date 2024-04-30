import 'package:book_store/core/errors/faliuers.dart';
import 'package:book_store/core/utils/api_service.dart';
import 'package:book_store/features/home/data/models/book_model/book_model.dart';
import 'package:book_store/features/home/data/repos/home_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
class HomeRepoImpl implements HomeRepo {
  final ApiService apiService;

  HomeRepoImpl(this.apiService);

  @override
  Future<Either<Failure, List<BookModel>>> fetchNewestBooks() async {
    try {
      var data = await apiService.get(
          // endPoint:
          //     'volumes?Filtering=free-ebooks&q=subject:Programming');
          endPoint:
              'volumes?Filtering=free-ebooks&Sorting=newest &q=computer science');
           
      List<BookModel> books = [];
      for (var item in data['items']) {
        try {
          books.add(BookModel.fromJson(item));
        } catch (e) {
          books.add(BookModel.fromJson(item));
          print(item);
        }
      }

      return right(books);
    } catch (e) {
      left(ServerFaliuer(e.toString()));
      if (e is DioException) {
        return left(
          ServerFaliuer.fromDioError(e),
        );
      }
      return left(
        ServerFaliuer(
          e.toString(),
        ),
      );
    }
  }

  @override
  Future<Either<Failure, List<BookModel>>> fetchFeaturedBooks() async {
    try {
      var data = await apiService.get(
          endPoint: 'volumes?Filtering=free-ebooks&q=subject:Computer Since');
      List<BookModel> books = [];
      for (var item in data['items']) {
        try {
          books.add(BookModel.fromJson(item));
        } catch (e) {
          books.add(BookModel.fromJson(item));
          print(item);
        }
      }

      return right(books);
    } catch (e) {
      if (e is DioException) {
        return left(
          ServerFaliuer.fromDioError(e),
        );
      }
      return left(
        ServerFaliuer(
          e.toString(),
        ),
      );
    }
  }

  @override
  Future<Either<Failure, List<BookModel>>> fetchSimilarBooks(
      {required String category}) async {
    try {
      var data = await apiService.get(
          endPoint:
              'volumes?Filtering=free-ebooks&Sorting=relevance &q=subject:Programming');
      List<BookModel> books = [];
      for (var item in data['items']) {
        books.add(BookModel.fromJson(item));
      }

      return right(books);
    } catch (e) {
      if (e is DioException) {
        return left(
          ServerFaliuer.fromDioError(e),
        );
      }
      return left(
        ServerFaliuer(
          e.toString(),
        ),
      );
    }
  }

  //   @override
  //     Future<Either<Failure, List<BookModel>>> fetchSearchBooks(String query) async {
  //   try {
  //     var data = await apiService.searchBooks(query);
  //     List<BookModel> books = (data['items'] as List)
  //         .map((item) => BookModel.fromJson(item))
  //         .toList();
  //     return right(books);
  //   } catch (e) {
  //     return left(ServerFaliuer(e.toString()));
  //   }
  // }
  

}

