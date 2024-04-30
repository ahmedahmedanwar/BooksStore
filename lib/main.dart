import 'package:book_store/Theme/dark_mode.dart';
import 'package:book_store/core/utils/app_router.dart';
import 'package:book_store/core/utils/service_locator.dart';
import 'package:book_store/features/home/data/repos/home_repo_implement.dart';
import 'package:book_store/features/home/presentation/featuerd_books_cubit/featuerd_books_cubit.dart';
import 'package:book_store/features/home/presentation/newest_books_cubit/newest_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';


void main() {
  setupGetItServiceLocator();
  
  runApp(const BookStore());
}

class BookStore extends StatelessWidget {
  const BookStore({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => FeatuerdBooksCubit(
            getIt.get<HomeRepoImpl>(),
          )..fetchFeaturedBooks(),
         
        ),
     
        BlocProvider(
          create: (context) => NewestBooksCubit(
            getIt.get<HomeRepoImpl>()
          )..fetchNewestBooks(),
        ),
      ],
        child: MaterialApp.router(
          routerConfig: AppRouter.router,
          debugShowCheckedModeBanner: false,
          theme: darkMode.copyWith(
              textTheme: GoogleFonts.montserratTextTheme(
              ThemeData.dark().textTheme,
            ),
          )
          //  ThemeData.dark().copyWith(
          //   // scaffoldBackgroundColor: KPrimaryColor,
            // textTheme: GoogleFonts.montserratTextTheme(
            //   ThemeData.dark().textTheme,
            // ),
          // ),
          ),
      //  child: MaterialApp.router(
      //   routerConfig: AppRouter.router,
      //   debugShowCheckedModeBanner: false,
      //   theme: ThemeData.dark().copyWith(
      //     scaffoldBackgroundColor: kPrimaryColor,
      //     textTheme:
      //         GoogleFonts.montserratTextTheme(ThemeData.dark().textTheme),
      //   ),
      // ),
    );

  }
}
