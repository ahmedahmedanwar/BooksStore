import 'package:book_store/core/errors/faliuers.dart';
import 'package:book_store/core/utils/api_service.dart';
import 'package:book_store/features/home/data/models/book_model/book_model.dart';
import 'package:book_store/features/home/data/repos/home_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class HomeRepoImpl implements HomeRepo {
  final ApiService apiService;

  HomeRepoImpl({required this.apiService});
  String endpoint =
      'volumes?Filtering=free-ebooks&Sorting:newest&q=subject=Programming';
  @override
  Future<Either<Failure, List<BookModel>>> fetchNewestBooks() async {
    try {
      var data = await apiService.get(endpoint: endpoint);

      List<BookModel> books = [];

      for (var item in data['items']) {
        books.add(BookModel.fromJson(item));
      }
      return right(books);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFaliuere.fromDioError(e));
      }
      return left(ServerFaliuere(e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<BookModel>>> fetchFeaturedBooks() async {
    String endpoint = 'volumes?Filtering=free-ebooks&q=subject=Programming';
    try {
      var data = await apiService.get(endpoint: endpoint);

      List<BookModel> books = [];

      for (var item in data['items']) {
        books.add(BookModel.fromJson(item));
      }
      return right(books);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFaliuere.fromDioError(e));
      }
      return left(ServerFaliuere(e.toString()));
    }
  }
}
