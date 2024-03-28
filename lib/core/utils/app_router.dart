import 'package:book_store/features/home/presentation/views/book_details_view.dart';
import 'package:book_store/features/home/presentation/views/home_view.dart';
import 'package:book_store/features/home/presentation/views/widgets/custom_drawer.dart';
import 'package:book_store/features/search/presentation/views/search_view.dart';
import 'package:book_store/features/splash/presentation/views/splash_view.dart';
import 'package:go_router/go_router.dart';

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
      GoRoute(
        path: KBookDetailsView,
        builder: (context, state) => const BookDetailsView(),
      ),
      GoRoute(
        path: KSearchView,
        builder: (context, state) => const SearchView(),
      ),
    ],
  );
}
