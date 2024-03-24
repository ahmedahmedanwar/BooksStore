import 'package:book_store/core/utils/styles.dart';
import 'package:book_store/features/home/presentation/views/widgets/book_rating.dart';
import 'package:book_store/features/home/presentation/views/widgets/books_actions.dart';
import 'package:book_store/features/home/presentation/views/widgets/custom_book_details_app_bar.dart';
import 'package:book_store/features/home/presentation/views/widgets/custom_book_image_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    // return Scaffold(
    //   // background: Colors.,
    //   appBar: AppBar(
    //     title: const Text(''),
    //   ),
    //   drawer: const MainDrawer(),
    // );
    var width = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 30),
      child: Column(
        children: [
          const CustomBookDetailsAppBar(),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: width * 0.17),
            child: const CustomBookImage(),
          ),
          const Text(
            "The Book of elie",
            style: Styles.textStyle30,
          ),
          const SizedBox(
            height: 22,
          ),
          Opacity(
            opacity: .7,
            child: Text(
              "The Author name",
              style: Styles.textStyle18.copyWith(
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.w600,
              ),
            
            ),
          ),
          const SizedBox(height: 18.0,),
          const BookRating(
            mainAxisAlignment: MainAxisAlignment.center,
            ),
            const SizedBox(height: 35.0,),
            const BooksAction(),
        ],
      ),
    );
  }
}
