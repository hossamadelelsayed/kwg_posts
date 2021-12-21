import 'package:flutter/material.dart';
import 'package:kwg/di/di.dart' as di;
import 'package:kwg/presentation/pages/app_view/app_view.dart';

void main() {
  di.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const AppView();
  }
}
