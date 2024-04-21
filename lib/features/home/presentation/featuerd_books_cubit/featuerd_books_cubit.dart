import 'package:bloc/bloc.dart';
import 'package:book_store/features/home/data/models/book_model/book_model.dart';
import 'package:book_store/features/home/data/repos/home_repo.dart';
import 'package:equatable/equatable.dart';

part 'featuerd_books_state.dart';

class FeatuerdBooksCubit extends Cubit<FeaturedBooksState> {
  FeatuerdBooksCubit(this.homeRepo) : super(FeaturedBooksInitial());

// we use this HomeRepo object because we are going to use it's methods =>
  final HomeRepo homeRepo;

  Future<void> fetchFeatuerdBooks() async {
    emit(FeaturedBooksLoading());
    var result = await homeRepo.fetchFeaturedBooks();
    result.fold((failure) {
      emit(FeaturedBooksFailure(failure.errorMessage));
    }, (books) {
      emit(FeaturedBooksSuccess(books));
          

    }
    );
   
  }
}
