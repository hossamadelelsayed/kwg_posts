import 'package:url_launcher/url_launcher.dart';
import 'package:kwg/core/failures.dart';
import 'package:dartz/dartz.dart';
import 'package:kwg/domain/repositories/url_launcher_repository.dart';

class URLauncherRepositoryImpl implements URLauncherRepository {
  URLauncherRepositoryImpl();

  @override
  Future<Either<Failure, void>> launchUrl({required String url}) async {
    try {
      if (!await launch(url)) throw 'Could not launch $url';
      return const Right(null);
    } catch (e) {
      return Left(Failure(message: e.toString()));
    }
  }
}
