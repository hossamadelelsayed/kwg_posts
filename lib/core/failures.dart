import 'package:equatable/equatable.dart';

class Failure extends Equatable {
  final String? message;
  const Failure({this.message});

  @override
  List<Object?> get props => [message];
}

// General failures
class ServerFailure extends Failure {
  @override
  List<Object?> get props => [];
}

class ReadFileFailure extends Failure {
  @override
  List<Object?> get props => [];
}

class CacheFailure extends Failure {
  @override
  List<Object?> get props => [];
}
