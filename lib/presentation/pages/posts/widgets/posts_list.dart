import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kwg/presentation/pages/posts/bloc/posts_bloc.dart';
import 'package:kwg/presentation/pages/posts/widgets/post_card.dart';
import 'package:kwg/presentation/res/colors.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';
import 'package:provider/provider.dart';

class PostsList extends StatelessWidget {
  PostsList({Key? key}) : super(key: key);

  final RefreshController _refreshController =
      RefreshController(initialRefresh: false);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<PostsBloc, PostsState>(
      listener: (context, state) {
        _refreshController.loadComplete();
        _refreshController.refreshCompleted();
      },
      listenWhen: (previous, current) => previous.status == PostsStatus.success,
      buildWhen: (previous, current) => previous.status == PostsStatus.success,
      builder: (context, state) {
        return SmartRefresher(
          enablePullDown: true,
          enablePullUp: !state.hasReachedMax,
          header: const WaterDropHeader(
            waterDropColor: AppColors.purple,
          ),
          controller: _refreshController,
          onRefresh: () => _onRefresh(context: context),
          onLoading: () => _onLoading(context: context),
          child: ListView.builder(
              itemCount: state.data.length,
              itemBuilder: (BuildContext context, int index) {
                return PostCard(post: state.data[index]);
              }),
        );
      },
    );
  }

  void _onRefresh({required BuildContext context}) =>
      context.read<PostsBloc>().add(const PostsRefreshed());

  void _onLoading({required BuildContext context}) =>
      context.read<PostsBloc>().add(const PostsFetched());
}
