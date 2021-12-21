import 'package:kwg/domain/entities/post_entity.dart';

class PostModel extends PostEntity {
  PostModel({
    required this.id,
    required this.postId,
    required String name,
    required String email,
    required String body,
  }) : super(name: name, email: email, body: body);

  final int postId;
  final int id;

  factory PostModel.fromJson(Map<String, dynamic> json) => PostModel(
        id: json['id'],
        postId: json['postId'],
        name: json['name'],
        email: json['email'],
        body: json['body'],
      );
}
