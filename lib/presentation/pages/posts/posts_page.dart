import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kwg/presentation/locale/app_localization.dart';
import 'package:kwg/presentation/locale/translation_keys.dart';
import 'package:kwg/presentation/pages/posts/bloc/posts_bloc.dart';
import 'package:kwg/presentation/pages/posts/widgets/posts_list.dart';
import 'package:kwg/presentation/res/colors.dart';
import 'package:kwg/presentation/res/text_styles.dart';

class PostsPage extends StatelessWidget {
  const PostsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.purple,
        centerTitle: true,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(20),
          ),
        ),
        title: Text(
          AppLocalizations.of(context)!.translate(TranslationKeys.posts),
          style: TextStyles.medium.copyWith(
            color: AppColors.white,
          ),
          textAlign: TextAlign.center,
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.open_in_browser_outlined),
            onPressed: () =>
                context.read<PostsBloc>().add(const PostsBrowserIconClicked()),
          ),
          const SizedBox(width: 15)
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: _getBody(),
      ),
    );
  }

  Widget _getBody() {
    return BlocBuilder<PostsBloc, PostsState>(
      buildWhen: (previous, current) =>
          previous.status == PostsStatus.initial ||
          current.status == PostsStatus.initial,
      builder: (context, state) {
        switch (state.status) {
          case PostsStatus.initial:
            return const Center(
                child: CircularProgressIndicator(color: AppColors.purple));

          case PostsStatus.success:
            return PostsList();
          default:
            return const Text('error');
        }
      },
    );
  }
}
