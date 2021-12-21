import 'package:equatable/equatable.dart';

class SuccessEntity extends Equatable {
  const SuccessEntity({
    this.message = '',
  });

  final String? message;

  @override
  List<Object?> get props => [message];
}
