import 'package:bloc/bloc.dart';
import 'package:book_store/features/home/data/repos/search_repo/search_repo.dart';
import 'package:equatable/equatable.dart';

import '../../data/models/book_model/book_model.dart';

part 'search_state.dart';

class SearchCubit extends Cubit<SearchState> {
  SearchCubit(this.searchRepo) : super(SearchInitial());

  final SearchRepo searchRepo;

  Future <void> fetchSearchBooks({required String bookType})async {

    var result = await searchRepo.fetchSearchBooks(bookType: bookType);
        result.fold((failure) {
      emit(SearchFailuer(failure.errorMessage));
    } , (books) {
      emit(SearchSuccess(books));
    });

  }
}
