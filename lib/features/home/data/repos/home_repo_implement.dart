import 'package:book_store/core/errors/faliuers.dart';
import 'package:book_store/core/utils/api_service.dart';
import 'package:book_store/features/home/data/models/book_model/book_model.dart';
import 'package:book_store/features/home/data/repos/home_repo.dart';
import 'package:dartz/dartz.dart';

class HomeRepoImpl implements HomeRepo {
  final ApiService apiService;

  HomeRepoImpl({required this.apiService});
  String endpoint ='volumes?q=subject:bestseller&Filtering=free-ebooks&Sorting=newest';
  @override
  Future<Either<Faliure, List<BookModel>>> fetchNewestBooks() async {
    
   try {
  var data = await apiService.get(endpoint: endpoint);
  
  List<BookModel> books = [] ;

  for (var item in data['items'] ){
    books.add(BookModel.fromJson(item));
   
  }
  return  right(books);
 
}  catch (e) {
  return  left(ServerFaliuere());
}
   
  }

  @override
  Future<Either<Faliure, List<BookModel>>> fetchFeaturedBooks() {
    // TODO: implement fetchFeaturedBooks
    throw UnimplementedError();
  }
}
