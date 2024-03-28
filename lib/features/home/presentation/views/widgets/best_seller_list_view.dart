import 'package:book_store/features/home/presentation/views/widgets/best_seller_list_view_item.dart';
import 'package:flutter/material.dart';

class BestSellerListView extends StatelessWidget {
  const BestSellerListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const NeverScrollableScrollPhysics(),
      padding: EdgeInsets.zero,
      itemCount: 30,
      itemBuilder: (context, index) {
        return const Padding(
          padding: EdgeInsets.symmetric(horizontal: 30),
          child: BookListViewItem(),
        );
      },
    );
  }
}
