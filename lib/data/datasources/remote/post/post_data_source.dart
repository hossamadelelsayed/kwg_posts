import 'package:kwg/data/models/post_model.dart';

abstract class PostDataSource {
  Future<List<PostModel>> getPosts({int page, int? limit});
}
