import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:equatable/equatable.dart';

abstract class FeaturesBooksState extends Equatable {
  const FeaturesBooksState();

  @override
  List<Object> get props => [];
}

class FeaturesBooksInitial extends FeaturesBooksState {}

class FeaturesBooksLoading extends FeaturesBooksState {}

class FeaturesBooksFailure extends FeaturesBooksState {
  final String errMessage;

  const FeaturesBooksFailure(this.errMessage);
}

class FeaturesBooksSuccess extends FeaturesBooksState {
  final List<BookModel> books;

  const FeaturesBooksSuccess(this.books);
}
