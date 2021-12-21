import 'package:dartz/dartz.dart';
import 'package:kwg/core/failures.dart';

abstract class URLauncherRepository {
  Future<Either<Failure, void>> launchUrl({required String url});
}
