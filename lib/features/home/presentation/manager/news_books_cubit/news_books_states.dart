import '../../../data/models/book_model/book_model.dart';

abstract class NewsBooksStates {

}

class NewsBooksInitalState  extends NewsBooksStates{

}
class NewsBooksLoadingState extends NewsBooksStates{

}
class NewsBooksSuccessState extends NewsBooksStates{
  final List<BookModel> books;

  NewsBooksSuccessState(this.books);
}
class NewsBooksFailureState extends NewsBooksStates{
  final String errMessage;

  NewsBooksFailureState(this.errMessage);
}

