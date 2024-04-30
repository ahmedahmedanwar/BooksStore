import 'package:book_store/core/utils/api_service.dart';
import 'package:book_store/features/home/data/repos/home_repo_implement.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void setupGetItServiceLocator() {
  getIt.registerSingleton<ApiService>(ApiService(Dio()));
  getIt.registerSingleton<HomeRepoImpl>(HomeRepoImpl(
  getIt.get<ApiService>(),
  ));
}
// void setupGetItServiceLocator() {
//   getIt.registerSingleton<Dio>(Dio());  // Registering Dio
//   getIt.registerSingleton<ApiService>(ApiService(getIt<Dio>()));  // ApiService requires Dio
//   getIt.registerSingleton<HomeRepo>(HomeRepoImpl(getIt<ApiService>()));  // Register HomeRepoImpl as HomeRepo
// }