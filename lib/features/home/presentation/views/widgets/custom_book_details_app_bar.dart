import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/utils/app_router.dart';

class CustomBookDetailsAppBar extends StatelessWidget {
  const CustomBookDetailsAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
              onPressed: () {
                GoRouter.of(context).pop(AppRouter.KHomeView);
              },
              icon: const Icon(Icons.arrow_back_ios),
              color: const Color.fromARGB(255, 24, 125, 132),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.shopping_cart,
                color: Color.fromARGB(255, 24, 125, 132),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
