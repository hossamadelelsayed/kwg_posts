import 'package:kwg/di/di.dart';
import 'package:kwg/presentation/pages/posts/bloc/posts_bloc.dart';

initializeBlocs() {
  _initializePostsBloc();
}

_initializePostsBloc() {
  di.registerFactory(
      () => PostsBloc(getPostsUseCase: di(), launchUrlUseCase: di()));
}
