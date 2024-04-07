import 'package:book_store/Theme/dark_mode.dart';
import 'package:book_store/core/utils/app_router.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const BookStore());
}

class BookStore extends StatelessWidget {
  const BookStore({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: AppRouter.router,
      debugShowCheckedModeBanner: false,
      theme:
      darkMode
      //  ThemeData.dark().copyWith(
      //   // scaffoldBackgroundColor: KPrimaryColor,
      //   textTheme: GoogleFonts.montserratTextTheme(
      //     ThemeData.dark().textTheme,
      //   ),
      // ),
    );
    // return  GetMaterialApp(
    //   debugShowCheckedModeBanner: false,
    //   theme: ThemeData.dark().copyWith(
    //     scaffoldBackgroundColor: KPrimaryColor,
    //     textTheme: GoogleFonts.montserratTextTheme(
    //       ThemeData.dark().textTheme,
    //     ),
    //   ),
    //   home: const SplashView(),
    // );
  }
}
