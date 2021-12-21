import 'package:kwg/domain/entities/success_entity.dart';

class SuccessModel extends SuccessEntity {
  String? _message;

  SuccessModel({String? message}) : super(message: message) {
    _message = message;
  }

  String get message => _message ?? '';
  set message(String message) => _message = message;

  SuccessModel.fromJson(Map<String, dynamic> json) {
    _message = json['message'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    data['message'] = _message;
    return data;
  }
}
