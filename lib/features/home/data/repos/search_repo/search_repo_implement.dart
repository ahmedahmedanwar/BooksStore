import 'package:book_store/core/errors/faliuers.dart';
import 'package:book_store/features/home/data/models/book_model/book_model.dart';
import 'package:book_store/features/home/data/repos/search_repo/search_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

import '../../../../../core/utils/api_service.dart';

class SearchRepoImpl implements SearchRepo {
  final ApiService apiService;

  SearchRepoImpl({required this.apiService});

  @override
  Future<Either<Failure, List<BookModel>>> fetchSearchBooks(
      {required String bookType}) async {
    try {
      var data = await apiService.get(
          endPoint: 'volumes?Filtering=free-ebooks&q=subject:$bookType');
      List<BookModel> books = [];
      for (var item in data['items']) {
        books.add(BookModel.fromJson(item));
      }
      return right(books);
    } catch (e) {
       left(ServerFaliuer(e.toString()));
      if (e is DioException) {
        return left(ServerFaliuer.fromDioError(e));
      } return left(ServerFaliuer(e.toString()));
    }
  }
}
