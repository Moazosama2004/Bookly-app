part of 'similar_books_cubit.dart';

@immutable
sealed class SimilarBooksState {}

class SimilarBooksInitialState extends SimilarBooksState {}

class SimilarBooksSuccessState extends SimilarBooksState {
  final List<BookModel> books;

  SimilarBooksSuccessState(this.books);
}

class SimilarBooksFailureState extends SimilarBooksState {
  final String errMessage;

  SimilarBooksFailureState(this.errMessage);
}

class SimilarBooksLoadingState extends SimilarBooksState {}
