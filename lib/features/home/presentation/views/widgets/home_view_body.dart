import 'package:book_store/constants.dart';
import 'package:book_store/core/utils/styles.dart';
import 'package:book_store/features/home/presentation/views/widgets/best_seller_list_view.dart';
import 'package:book_store/features/home/presentation/views/widgets/custom_app_bar.dart';
import 'package:book_store/features/home/presentation/views/widgets/featured_list_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {

    return const CustomScrollView(
      slivers: [
        // CustomAppBar(),
        SliverToBoxAdapter(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: KGPadding30),
                child: CustumAppBar(),
              ),
              FeatueredBooksListView(),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: KGPadding30),
                child: Text('Best Seller', style: Styles.textStyle18),
              ),
              SizedBox(
                height: 8,
              ),
              SizedBox(
                height: 20,
              ),
             
            ] ,
          ),
        ),
        SliverFillRemaining(
          child: BestSellerListView(),
        ),

      ],
    );
     
  }
}
