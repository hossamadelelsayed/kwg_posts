import 'package:dartz/dartz.dart';
import 'package:kwg/core/failures.dart';
import 'package:kwg/core/usecase.dart';
import 'package:kwg/domain/entities/post_entity.dart';
import 'package:kwg/domain/repositories/post_repository.dart';

class GetPostsUseCase extends UseCase<List<PostEntity>, int> {
  GetPostsUseCase(this.postRepository);

  final PostRepository postRepository;

  @override
  Future<Either<Failure, List<PostEntity>>> call(int params) async {
    final result = await postRepository.getPosts(page: params);
    return result;
  }
}
