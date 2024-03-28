import 'package:book_store/core/utils/styles.dart';
import 'package:book_store/features/home/presentation/views/widgets/book_rating.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../../constants.dart';
import '../../../../../core/utils/app_router.dart';
import '../../../../../core/utils/assets.dart';

class BookListViewItem extends StatelessWidget {
  const BookListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(
          AppRouter.KBookDetailsView,
        );
      },
      child: SizedBox(
        height: 125,
        child: Row(
          children: [
            AspectRatio(
              aspectRatio: 3 / 4,
              child: Container(
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(8)),
                  image: DecorationImage(
                      image: AssetImage(AssetsData.testImage),
                      fit: BoxFit.fill),
                ),
              ),
            ),
            const SizedBox(
              width: 30,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.5,
                    child: Text(
                      'Harry poter and the Goblet of fire',
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
                  const Text(
                    'The writer name ',
                    style: Styles.textStyle14,
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Row(
                    children: [
                      Text(
                        '25.0\$',
                        style: Styles.textStyle20.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const Spacer(),
                      const BookRating(),
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
