import 'package:dartz/dartz.dart';
import 'package:kwg/core/failures.dart';
import 'package:kwg/core/usecase.dart';
import 'package:kwg/domain/repositories/url_launcher_repository.dart';

class LaunchUrlUseCase extends UseCase<void, String> {
  final URLauncherRepository repository;

  LaunchUrlUseCase(this.repository);

  @override
  Future<Either<Failure, void>> call(String params) {
    return repository.launchUrl(url: params);
  }
}
