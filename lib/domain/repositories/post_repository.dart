import 'package:dartz/dartz.dart';
import 'package:kwg/core/failures.dart';
import 'package:kwg/domain/entities/post_entity.dart';

abstract class PostRepository {
  Future<Either<Failure, List<PostEntity>>> getPosts({required int page});
}
