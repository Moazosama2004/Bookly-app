import '../../../data/models/book_model/book_model.dart';

abstract class FeaturedBooksStates {

}

class FeaturedBooksInitalState  extends FeaturedBooksStates{

}
class FeaturedBooksLoadingState extends FeaturedBooksStates{

}
class FeaturedBooksSuccessState extends FeaturedBooksStates{
  final List<BookModel> books;

  FeaturedBooksSuccessState(this.books);
}
class FeaturedBooksFailureState extends FeaturedBooksStates{
  final String errMessage;

  FeaturedBooksFailureState(this.errMessage);
}

