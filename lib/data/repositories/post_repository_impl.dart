import 'package:kwg/core/failures.dart';
import 'package:dartz/dartz.dart';
import 'package:kwg/data/datasources/remote/post/post_data_source.dart';
import 'package:kwg/domain/entities/post_entity.dart';
import 'package:kwg/domain/repositories/post_repository.dart';

class PostRepositoryImpl implements PostRepository {
  PostRepositoryImpl({required this.postDataSource});

  final PostDataSource postDataSource;

  @override
  Future<Either<Failure, List<PostEntity>>> getPosts(
      {required int page}) async {
    try {
      final result = await postDataSource.getPosts(page: page);
      return Right(result);
    } catch (e) {
      return Left(Failure(message: e.toString()));
    }
  }
}
