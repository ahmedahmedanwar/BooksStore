import 'package:flutter/cupertino.dart';

class SearchResultListView extends StatelessWidget {
  const SearchResultListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      // physics: const NeverScrollableScrollPhysics(),
      padding: EdgeInsets.zero,
      itemCount: 30,
      itemBuilder: (context, index) {
        // after changing books list view items it makes error so for now changing it to a text widget  
        // return const BookListViewItem();
        return const Text('Search');
      },
    );
  }
}
