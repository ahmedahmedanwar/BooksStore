

import 'package:book_store/core/utils/styles.dart';
import 'package:flutter/material.dart';

import '../../../../../constants.dart';
import '../../../../../core/utils/assets.dart';

class BestSellerListViewItem extends StatelessWidget {
  const BestSellerListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 125,
      child: Row(
        children: [
          AspectRatio(
            aspectRatio: 3 / 4,
            child: Container(
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(8)),
                image: DecorationImage(
                    image: AssetImage(AssetsData.testImage), fit: BoxFit.fill),
              ),
            ),
          ),
          const SizedBox(
            width: 30,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.5,
                child:  Text(
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
              const SizedBox(height: 5,),
               Row(
                children: [
                  Text('25.0 \$',style: Styles.textStyle20.copyWith(
                    fontWeight: FontWeight.bold ,
                  )),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
