import 'package:book_store/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BookingRating extends StatelessWidget {
  const BookingRating({super.key});

  @override
  Widget build(BuildContext context) {
    return   Row(
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
