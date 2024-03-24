import 'package:book_store/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BookRating extends StatelessWidget {
  const BookRating({super.key,  this.mainAxisAlignment = MainAxisAlignment.start});

final MainAxisAlignment mainAxisAlignment;
  @override
  Widget build(BuildContext context) {
    return   Row(
     mainAxisAlignment: mainAxisAlignment,
      children: [
        const Icon(
          FontAwesomeIcons.solidStar,
          color: Color.fromARGB(206, 215, 179, 36),
        
        ),
        const Text(' 5.0',
        style: Styles.textStyle16,
         
        ),
        Text(' (4445)',style: Styles.textStyle14.copyWith(color: Colors.grey),)
      ],
    );
  }
}
