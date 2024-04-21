import 'package:book_store/core/widgets/custom_error_widget.dart';
import 'package:book_store/core/widgets/custom_loading_indecator.dart';
import 'package:book_store/features/home/presentation/newest_books_cubit/newest_books_cubit.dart';
import 'package:book_store/features/home/presentation/views/widgets/best_seller_list_view_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BestSellerListView extends StatelessWidget {
  const BestSellerListView({super.key});


  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewestBooksCubit, NewestBooksState>(
      builder: (context, state) {
        if (state is NewestBooksSuccess ) {
  return ListView.builder(
    physics: const NeverScrollableScrollPhysics(),
    padding: const EdgeInsets.only(bottom: 10),
    itemCount: state.books.length,
    itemBuilder: (context, index) {
      return  Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: BookListViewItem(
          bookModel: state.books[index],
        ),
      );
    
    },
  );
}else if(state is NewestBooksFaliuer){
return CustomErrorWidget(errorMessage: state.errorMessage);

}else{
  return const CustomLoadingIndecator();
}
      },
    );
  }
}
