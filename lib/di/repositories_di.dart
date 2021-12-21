import 'package:kwg/data/helpers/network/network_helper.dart';
import 'package:kwg/data/helpers/network/network_helper_impl.dart';
import 'package:kwg/data/repositories/post_repository_impl.dart';
import 'package:kwg/data/repositories/url_launcher_repository_impl.dart';
import 'package:kwg/di/di.dart';
import 'package:kwg/domain/repositories/post_repository.dart';
import 'package:kwg/domain/repositories/url_launcher_repository.dart';

initializeRepositories() {
  _initializeNetworkHelper();
  _initializePostRepository();
  _initializeURLauncherRepository();
}

_initializeURLauncherRepository() {
  di.registerLazySingleton<URLauncherRepository>(
    () => URLauncherRepositoryImpl(),
  );
}

_initializePostRepository() {
  di.registerLazySingleton<PostRepository>(
    () => PostRepositoryImpl(postDataSource: di()),
  );
}

_initializeNetworkHelper() {
  di.registerLazySingleton<NetworkHelper>(
    () => NetworkHelperImpl(),
  );
}
