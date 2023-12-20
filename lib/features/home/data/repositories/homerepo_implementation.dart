import 'package:bookly/core/api/api_manager.dart';
import 'package:bookly/core/api/end_ponits.dart';
import 'package:bookly/core/error/failures.dart';
import 'package:bookly/features/home/data/models/book_model/book_model.dart';
import 'package:bookly/features/home/data/repositories/home_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class HomeRepoImplemetation implements HomeRepo {
  final ApiManager apiManager;

  HomeRepoImplemetation({required this.apiManager});
  @override
  Future<Either<Failures, BookModel>> getBestSellerBooks(
      {required String q}) async {
    try {
      var data =
          await apiManager.get(endPoint: EndPoint.volumes, queryParameters: {
        'q': q,
      });
      BookModel model = BookModel.fromJson(data);
      return right(model);
    } on DioException catch (e) {
      return left(ServerFailure.fromDioException(e));
    } catch (e) {
      return left(ServerFailure(error: e.toString()));
    }
  }

  @override
  Future<Either<Failures, BookModel>> getPopularBook() {
    throw UnimplementedError();
  }
}
