import 'package:book_store/features/home/presentation/views/widgets/book_rating.dart';
import 'package:book_store/features/home/presentation/views/widgets/books_actions.dart';
import 'package:book_store/features/home/presentation/views/widgets/custom_book_details_app_bar.dart';
import 'package:book_store/features/home/presentation/views/widgets/custom_book_image_item.dart';
import 'package:book_store/features/home/presentation/views/widgets/similar_books_list_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utils/styles.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverFillRemaining(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 30, vertical: 30),
            child: Column(
              children: [
                CustomBookDetailsAppBar(),
                BooksDetailsSection(),
                Expanded(
                  child: SizedBox(
                    height: 50,
                  ),
                ),
                SimilarBooksSection(),
              ],
            ),
          ),
        )
      ],
    );
  }
}

class BooksDetailsSection extends StatelessWidget {
  const BooksDetailsSection({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;

    return Column(
      children: [
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
        const SizedBox(
          height: 18.0,
        ),
        const BookRating(
          mainAxisAlignment: MainAxisAlignment.center,
        ),
        const SizedBox(
          height: 35.0,
        ),
        const BooksAction(),
      ],
    );
  }
}

class SimilarBooksSection extends StatelessWidget {
  const SimilarBooksSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Align(
          alignment: Alignment.centerLeft,
          child: Text(
            'Books you may like',
            style: Styles.textStyle14.copyWith(fontWeight: FontWeight.w600),
          ),
        ),
        const SizedBox(
          height: 15,
        ),
        const SimilarBooksListView(),
      ],
    );
  }
}
