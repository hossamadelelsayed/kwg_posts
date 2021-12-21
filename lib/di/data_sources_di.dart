import 'package:kwg/data/datasources/remote/post/post_data_source.dart';
import 'package:kwg/data/datasources/remote/post/post_data_source_impl.dart';
import 'package:kwg/di/di.dart';

initializeDataSources() {
  _initializePostsDataSource();
}

_initializePostsDataSource() {
  di.registerLazySingleton<PostDataSource>(
    () => PostDataSourceImpl(network: di()),
  );
}
