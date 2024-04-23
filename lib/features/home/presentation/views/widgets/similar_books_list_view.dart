import 'package:book_store/core/widgets/custom_loading_indecator.dart';
import 'package:book_store/features/home/presentation/similar_books_cubit/similar_books_cubit.dart';
import 'package:book_store/features/home/presentation/views/widgets/custom_book_image_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/widgets/custom_error_widget.dart';

class SimilarBooksListView extends StatelessWidget {
  const SimilarBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
   

    return BlocBuilder<SimilarBooksCubit, SimilarBooksState>(
      builder: (context, state) {
        if (state is SimilarBooksSuccess) {
          return SizedBox(
            height: MediaQuery.of(context).size.height * .15,
            child: ListView.builder(
              itemCount: state.books.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return  Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5.0),
                  child: CustomBookImage(imageUrl: state.books[index].volumeInfo.imageLinks?.thumbnail ??'' ),
                );
              },
            ),
          );
        }else if (state is SimilarBooksFaliuer){
              return CustomErrorWidget(errorMessage: state.errorMessage); 
        }else {
          return const CustomLoadingIndecator() ;
        }
      },
    );
  }
}
