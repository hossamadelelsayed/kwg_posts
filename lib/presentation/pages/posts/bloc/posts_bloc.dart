import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:kwg/domain/entities/post_entity.dart';
import 'package:kwg/domain/usecases/post/get_posts_use_case.dart';
import 'package:kwg/domain/usecases/url_launcher/launch_url_use_case.dart';

part 'posts_event.dart';
part 'posts_state.dart';

class PostsBloc extends Bloc<PostsEvent, PostsState> {
  PostsBloc({
    required this.getPostsUseCase,
    required this.launchUrlUseCase,
  }) : super(const PostsState(data: [])) {
    on<PostsFetched>(_onPostsFetched);
    on<PostsRefreshed>(_onPostsRefreshed);
    on<PostsBrowserIconClicked>(_onBrowserIconClicked);
  }

  final GetPostsUseCase getPostsUseCase;
  final LaunchUrlUseCase launchUrlUseCase;

  int page = 0;
  int totalPages = 19;

  void _onBrowserIconClicked(
    PostsBrowserIconClicked event,
    Emitter<PostsState> emit,
  ) =>
      launchUrlUseCase.call('https://www.kwgsoftworks.com/');

  void _onPostsRefreshed(
    PostsRefreshed event,
    Emitter<PostsState> emit,
  ) async {
    page = 0;
    await _fetchPosts(event, emit);
  }

  void _onPostsFetched(
    PostsFetched event,
    Emitter<PostsState> emit,
  ) async {
    if (state.hasReachedMax) return;
    await _fetchPosts(event, emit);
  }

  _fetchPosts(PostsEvent event, Emitter<PostsState> emit) async {
    final params = page++;

    final either = await getPostsUseCase.call(params);
    either.fold((failure) => emit(state.copyWith(status: PostsStatus.failure)),
        (data) {
      if (page == 0) {
        emit(state.copyWith(
            data: data,
            status: PostsStatus.success,
            hasReachedMax: page >= totalPages));
      } else {
        emit(state.copyWith(
            data: List.of(state.data)..addAll(data),
            status: PostsStatus.success,
            hasReachedMax: page >= totalPages));
      }
    });
  }
}
