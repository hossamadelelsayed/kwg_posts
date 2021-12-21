import 'package:kwg/di/di.dart';
import 'package:kwg/domain/usecases/post/get_posts_use_case.dart';
import 'package:kwg/domain/usecases/url_launcher/launch_url_use_case.dart';

initializeUseCases() {
  di.registerLazySingleton(
    () => LaunchUrlUseCase(di()),
  );

  di.registerLazySingleton(
    () => GetPostsUseCase(di()),
  );
}
