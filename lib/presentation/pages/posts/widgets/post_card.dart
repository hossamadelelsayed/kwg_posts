import 'package:flutter/material.dart';
import 'package:kwg/domain/entities/post_entity.dart';
import 'package:kwg/presentation/res/colors.dart';
import 'package:kwg/presentation/res/text_styles.dart';

class PostCard extends StatelessWidget {
  const PostCard({
    Key? key,
    required this.post,
  }) : super(key: key);

  final PostEntity post;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              post.name,
              style:
                  TextStyles.bold.copyWith(fontSize: 14, color: AppColors.dark),
            ),
            const SizedBox(height: 5),
            Text(
              post.email,
              style: TextStyles.semiBold
                  .copyWith(fontSize: 14, color: AppColors.greyLight),
            ),
            const SizedBox(height: 5),
            Text(
              post.body,
              style: TextStyles.regular
                  .copyWith(fontSize: 14, color: AppColors.dark),
            ),
          ],
        ),
      ),
    );
  }
}
