import 'package:bloc/bloc.dart';
import 'package:bookly_app/features/home/data/repos/home_repo.dart';
import 'package:bookly_app/features/home/presentation/manager/featured_books_cubit/featured_books_states.dart';

class FeaturedBooksCubit extends Cubit<FeaturedBooksStates> {
  FeaturedBooksCubit(this.homeRepo) : super(FeaturedBooksInitalState());
  final HomeRepo homeRepo;

  Future<void> fetchFeaturedBooks () async{
    emit(FeaturedBooksLoadingState());
    var result = await homeRepo.fetchFeaturedBooks();
    result.fold((failure) {
      emit(FeaturedBooksFailureState(failure.errMessage));
    }, (books){
      emit(FeaturedBooksSuccessState(books));
    });
  }
}