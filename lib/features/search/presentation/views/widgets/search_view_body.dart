
import 'package:book_store/core/utils/styles.dart';
import 'package:book_store/core/widgets/custom_error_widget.dart';
import 'package:book_store/features/home/presentation/search_cubit/search_cubit.dart';
import 'package:book_store/features/home/presentation/views/widgets/shimmer_effect_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/widgets/custom_loading_indecator.dart';
import '../../../../home/presentation/views/widgets/books_list_view_item.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchCubit,SearchState>(builder: (context, state){
      if (state is SearchLoading) {
        return const CustomLoadingIndecator();
      }else if (state is SearchSuccess){
        return   Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 20),
                  child: Text("Search Result", style: Styles.textStyle18,),
                ),
                Expanded(
                  child: ListView.builder(
                      physics: const ScrollPhysics(),
                      itemBuilder: ((context, index) => Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10),
                        child: BookListViewItem(bookModel: state.books[index],),
                      )),
                      itemCount: state.books.length ?? 0),
                )
              ],
            ),
          );
      }else if(state is SearchFailuer){
        return  CustomErrorWidget(errorMessage: state.errorMessage,);
      }else{
        return const ShimmerEffectContainer();
      }
    },);



}

}
// import 'package:flutter/material.dart';

// class SearchViewBody extends StatelessWidget {
//   const SearchViewBody({super.key});

//   @override
//      Widget build(BuildContext context) {
//     return const Scaffold(
//       body: SafeArea(
//         child: SearchViewBody(),
//       ),
//     );
//   }
// }

