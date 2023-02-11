import 'features_books_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../data/repos/home_repo.dart';

class FeaturesBooksCubit extends Cubit<FeaturesBooksState> {
  FeaturesBooksCubit(this.homeRepo) : super(FeaturesBooksInitial());

  final HomeRepo homeRepo;

  Future<void> fetchFeaturesBooks() async {
    emit(FeaturesBooksLoading());

    var result = await homeRepo.fetchFeaturedBooks();

    result.fold(
      (failure){
        emit(FeaturesBooksFailure(failure.errorMessage));
      },
      (books){
        emit(FeaturesBooksSuccess(books));
      }
      );
  }
}
