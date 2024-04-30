// import 'package:book_store/features/home/presentation/views/widgets/featured_list_view.dart';
// import 'package:flutter/cupertino.dart';

// class SearchResultListView extends StatelessWidget {
//   const  SearchResultListView({super.key});


//   @override
//   Widget build(BuildContext context) {
//     return ListView.builder(
//       // physics: const NeverScrollableScrollPhysics(),
//       padding: EdgeInsets.zero,
//       itemCount: 30,
//       itemBuilder: (context, index) {
//         // after changing books list view items it makes error so for now changing it to a text widget  
//         // return const BookListViewItem();
//         return const FeatueredBooksListView();
//       },
//     );
//   }
// }
  // import 'package:flutter/material.dart';
  // import 'package:flutter_bloc/flutter_bloc.dart';

  // import '../../../../home/presentation/search_cubit/search_cubit.dart';

  // class SearchResultListView extends StatelessWidget {
  //   const SearchResultListView({super.key});

  //   @override
  //   Widget build(BuildContext context) {
  //     return BlocBuilder<SearchCubit, SearchState>(
  //       builder: (context, state) {
  //         if (state is SearchLoading) {
  //           return const Center(child: CircularProgressIndicator());
  //         } else if (state is SearchLoaded) {
  //           return ListView.builder(
  //             itemCount: state.books.length,
  //             itemBuilder: (context, index) {
  //             final book = state.books[index];
  //             return ListTile(
  //               title: Text(book.volumeInfo.title.toString()), // Assuming 'title' is a field in your BookModel
  //             );
  //           },
  //         );
  //       } else if (state is SearchError) {
  //         return Center(child: Text(state.message));
  //       } else {
  //         return const Center(child: Text("Type to search books..."));
  //       }
  //     },
  //   );
  // }
  // }
