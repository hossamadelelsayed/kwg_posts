import 'package:get_it/get_it.dart';
import 'package:kwg/di/blocs_di.dart';
import 'package:kwg/di/data_sources_di.dart';
import 'package:kwg/di/repositories_di.dart';
import 'package:kwg/di/use_cases_di.dart';

GetIt di = GetIt.instance;
void init() async {
  initializeRepositories();
  initializeDataSources();
  initializeUseCases();
  initializeBlocs();
}
