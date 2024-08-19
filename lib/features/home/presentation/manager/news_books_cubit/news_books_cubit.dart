import 'package:bloc/bloc.dart';
import 'package:bookly_app/features/home/data/repos/home_repo.dart';

import 'news_books_states.dart';

class NewsBooksCubit extends Cubit<NewsBooksStates> {
  NewsBooksCubit(this.homeRepo) : super(NewsBooksInitalState());
  final HomeRepo homeRepo;

  Future<void> fetchNewsBooks () async{
    emit(NewsBooksLoadingState());
    var result = await homeRepo.fetchNewestBooks();
    result.fold((failure) {
      emit(NewsBooksFailureState(failure.errMessage));
    }, (books){
      emit(NewsBooksSuccessState(books));
    });
  }
}