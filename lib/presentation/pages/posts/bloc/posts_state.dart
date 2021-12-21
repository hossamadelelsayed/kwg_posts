part of 'posts_bloc.dart';

enum PostsStatus { initial, success, failure }

class PostsState extends Equatable {
  const PostsState({
    this.status = PostsStatus.initial,
    this.hasReachedMax = false,
    required this.data,
  });

  final PostsStatus status;
  final List<PostEntity> data;
  final bool hasReachedMax;

  PostsState copyWith({
    PostsStatus? status,
    List<PostEntity>? data,
    bool? hasReachedMax,
  }) {
    return PostsState(
      status: status ?? this.status,
      data: data ?? this.data,
      hasReachedMax: hasReachedMax ?? this.hasReachedMax,
    );
  }

  @override
  List<Object> get props => [status, data, hasReachedMax];
}
