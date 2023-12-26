import 'package:bloc/bloc.dart';
import 'package:bookly/core/error/failures.dart';
import 'package:bookly/features/Search/data/repositories/search_repo.dart';
import 'package:bookly/features/home/data/models/book_model/book_model.dart';
import 'package:dartz/dartz.dart';

part 'search_state.dart';

class SearchCubit extends Cubit<SearchState> {
  BookModel? books;
  SearchCubit(this.searchRepo) : super(SearchInitial());
  final SearchRepo searchRepo;
  search({required String searchIteam}) async {
    emit(SearchLoadingState());
    Either<Failures, BookModel> data =
        await searchRepo.searchBook(searchIteam: searchIteam);
    data.fold((fail) {
      emit(SearchErrorState(errorMassage: fail.error));
    }, (book) {
      books = book;
      emit(SearchSuccessState());
    });
  }
}
