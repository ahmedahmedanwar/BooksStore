import 'package:book_store/core/utils/api_service.dart';
import 'package:book_store/features/home/data/repos/home_repo_implement.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void setup() {
  getIt.registerSingleton<ApiService>(ApiService(Dio()));
  getIt.registerSingleton<HomeRepoImpl>(HomeRepoImpl(
  getIt.get<ApiService>(),
  ));
}
