
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../data/repos/home_repo.dart';
import 'newset_books_state.dart';

class NewsetBooksCubit extends Cubit<NewsetBooksState> {
  NewsetBooksCubit(this.homeRepo) : super(NewsetBooksInitial());

  final HomeRepo homeRepo;

  Future<void> fetchNewsetBooks() async {
    emit(NewsetBooksLoading());

    var result = await homeRepo.fetchNewestBooks();

    result.fold(
      (failure){
        emit(NewsetBooksFailure(failure.errorMessage));
      },
      (books){
        emit(NewsetBooksSuccess(books));
      }
      );
  }
}
