import 'package:bloc/bloc.dart';
import 'package:book_store/features/home/data/models/book_model/book_model.dart';
import 'package:book_store/features/home/data/repos/home_repo.dart';
import 'package:equatable/equatable.dart';

part 'newest_books_state.dart';

class NewestBooksCubit extends Cubit<NewestBooksState> {
  NewestBooksCubit(this.homeRepo) : super(NewestBooksInitial());

  // we use this HomeRepo object because we are going to use it's methods =>
  final HomeRepo homeRepo;

  Future<void> fetchNewestBooks() async {
    emit(NewestBooksLoading());
    var result = await homeRepo.fetchNewestBooks();

    result.fold(
      (failure) {
        emit(NewestBooksFaliuer(failure.errorMessage));
      },
      (books) {
        emit(NewestBooksSuccess(books));
        // ignore: avoid_print
        print(books);
      },
    );
  }
}
