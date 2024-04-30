import 'package:book_store/core/utils/api_service.dart';
import 'package:book_store/core/utils/service_locator.dart';
import 'package:book_store/features/home/data/models/book_model/book_model.dart';
import 'package:book_store/features/home/data/repos/home_repo_implement.dart';
import 'package:book_store/features/home/presentation/search_cubit/search_cubit.dart';
import 'package:book_store/features/home/presentation/similar_books_cubit/similar_books_cubit.dart';
import 'package:book_store/features/home/presentation/views/book_details_view.dart';
import 'package:book_store/features/home/presentation/views/home_view.dart';
import 'package:book_store/features/home/presentation/views/widgets/custom_drawer.dart';
import 'package:book_store/features/search/presentation/views/search_view.dart';
import 'package:book_store/features/splash/presentation/views/splash_view.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../features/home/data/repos/search_repo/search_repo_implement.dart';

abstract class AppRouter {
  // ignore: constant_identifier_names
  static const KHomeView = '/homeView';
  // ignore: constant_identifier_names
  static const KMainDrawer = '/drawer';
  // ignore: constant_identifier_names
  static const KBookDetailsView = '/bookDetailsView';
  static const KSearchView = '/SearchView';

  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const SplashView(),
      ),
      GoRoute(
        path: KHomeView,
        builder: (context, state) => const HomeView(),
      ),
      GoRoute(
        path: KMainDrawer,
        builder: (context, state) => const MainDrawer(),
      ),

      /// we used (BlocProvider) Here to only use it with this screen whithout any access
      ///  from another screen also to distroy this cubit once this screen closed.
      GoRoute(
        path: KBookDetailsView,
        builder: (context, state) => BlocProvider(
          create: (context) => SimilarBooksCubit(getIt.get<HomeRepoImpl>()),
          child: BookDetailsView(bookModel: state.extra as BookModel),
        ),
      ),
      GoRoute(
        path: KSearchView,
        builder: (context, GoRouterState state) {
              String bookName = state.extra as String? ?? '';
          return BlocProvider(
            create: (context) =>
                SearchCubit(SearchRepoImpl(apiService: getIt.get<ApiService>()))
                  ..fetchSearchBooks(bookType: bookName ?? '' ),
            child: SearchView(
              // bookName: state.extra  as String ,
              bookName:  bookName ?? '' ,
            ),
          );
        },
      ),
    ],
  );
}
