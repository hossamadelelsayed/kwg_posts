import 'package:flutter/material.dart';
import 'package:kwg/presentation/locale/app_localization.dart';
import 'package:kwg/presentation/locale/translation_keys.dart';
import 'package:kwg/presentation/res/assets.dart';
import 'package:kwg/presentation/res/colors.dart';
import 'package:kwg/presentation/routes/app_routes.dart';
import 'package:kwg/presentation/widgets/form_button.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.purple,
      body: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Image.asset(AppAssets.logo),
          Expanded(
              child: Center(
            child: Padding(
              padding: const EdgeInsets.all(30),
              child: FormButton(
                primaryColor: AppColors.greyLight,
                label: AppLocalizations.of(context)!
                    .translate(TranslationKeys.viewPosts),
                onPressed: () =>
                    Navigator.of(context).pushNamed(AppRoutes.postsPage),
              ),
            ),
          ))
        ],
      ),
    );
  }
}
