import 'package:flutter/material.dart';
import 'package:kwg/presentation/locale/locale_constants.dart';
import 'package:kwg/presentation/locale/locale_resolution_callback.dart';
import 'package:kwg/presentation/res/colors.dart';
import 'package:kwg/presentation/routes/app_routes.dart';

class AppView extends StatefulWidget {
  const AppView({
    Key? key,
  }) : super(key: key);

  @override
  State<AppView> createState() => _AppViewState();
}

class _AppViewState extends State<AppView> {
  final _navigatorKey = GlobalKey<NavigatorState>();

  NavigatorState get _navigator => _navigatorKey.currentState!;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorKey: _navigatorKey,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: PrimarySwatch(),
      ),
      localizationsDelegates: localizationDelegates,
      localeResolutionCallback: getSelectedLang,
      supportedLocales: supportedLocale,
      debugShowCheckedModeBanner: false,
      initialRoute: AppRoutes.introPage,
      onGenerateRoute: AppRoutes.generateRoute,
    );
  }
}
