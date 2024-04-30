import 'package:book_store/core/utils/styles.dart';
import 'package:book_store/features/home/data/models/book_model/book_model.dart';
import 'package:book_store/features/home/presentation/views/widgets/book_rating.dart';
import 'package:book_store/features/home/presentation/views/widgets/custom_book_image_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../../constants.dart';
import '../../../../../core/utils/app_router.dart';

class BookListViewItem extends StatelessWidget {
  const BookListViewItem({super.key, required this.bookModel});
  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(AppRouter.KBookDetailsView, extra: bookModel);
      },
      child: SizedBox(
        height: 125,
        child: Row(
          children: [
            CustomBookImage(
              imageUrl: bookModel.volumeInfo.imageLinks?.thumbnail ?? errImage,
              // AspectRatio(
              //   aspectRatio: 3 / 4,
              //   child: Container(
              //     decoration: const BoxDecoration(
              //       borderRadius: BorderRadius.all(Radius.circular(8)),
              //       image: DecorationImage(
              //           image: AssetImage(AssetsData.testImage),
              //           fit: BoxFit.fill),
              //     ),
              //   ),
            ),
            const SizedBox(
              width: 30,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.6,
                    child: Text(
                      //getting books text info title
                      bookModel.volumeInfo.title ?? '',
                      style: Styles.textStyle20.copyWith(
                        fontFamily: KGSectraFine,
                      ),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(
                    bookModel.volumeInfo.authors?[0] ?? 'No authors founded',
                    style: Styles.textStyle14,
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Row(
                    children: [
                      Text(
                        'Free',
                        style: Styles.textStyle20.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const Spacer(),
                      BookRating(
                        rating: bookModel.volumeInfo.averageRating ?? 0,
                        ratingCount: bookModel.volumeInfo.ratingsCount ?? 0,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
