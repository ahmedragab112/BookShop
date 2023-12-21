import 'package:bloc/bloc.dart';
import 'package:bookly/features/home/data/models/book_model/book_model.dart';
import 'package:bookly/features/home/data/repositories/home_repo.dart';
import 'package:equatable/equatable.dart';


part 'get_simailer_books_state.dart';

class GetSimailerBooksCubit extends Cubit<GetSimailerBooksState> {
  GetSimailerBooksCubit(this.homeRepo) : super(GetSimailerBooksInitial());
    final HomeRepo homeRepo;
  BookModel? bookModel;
  Future<void> getBestSellerBooks() async {
    emit(GetSimailerBooksLoading());
    var result = await homeRepo.getBestSellerBooks();
    result.fold((faluir) {
      emit(GetSimailerBooksError(errorMassage: faluir.error));
    }, (books) {
      emit(GetSimailerBooksSuccess());
      bookModel = books;
    });
  }
}
