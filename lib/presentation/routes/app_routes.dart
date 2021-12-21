import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kwg/di/di.dart';
import 'package:kwg/presentation/pages/intro/intro_page.dart';
import 'package:kwg/presentation/pages/posts/bloc/posts_bloc.dart';
import 'package:kwg/presentation/pages/posts/posts_page.dart';

class AppRoutes {
  static const postsPage = '/postsPage';
  static const introPage = '/introPage';

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case introPage:
        return MaterialPageRoute(builder: (_) => const IntroPage());

      case postsPage:
        return MaterialPageRoute(
            builder: (_) => BlocProvider(
                  create: (context) =>
                      di<PostsBloc>()..add(const PostsFetched()),
                  child: const PostsPage(),
                ));

      default:
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(builder: (_) {
      return Scaffold(
        appBar: AppBar(
          title: const Text('Error'),
        ),
        body: const Center(
          child: Text('ERROR'),
        ),
      );
    });
  }
}
