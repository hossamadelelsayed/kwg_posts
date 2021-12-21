import 'dart:convert';

import 'package:kwg/data/constants/api.dart';
import 'package:kwg/data/datasources/remote/post/post_data_source.dart';
import 'package:kwg/data/helpers/network/api_endpoints.dart';
import 'package:kwg/data/helpers/network/network_helper.dart';
import 'package:kwg/data/models/post_model.dart';

class PostDataSourceImpl implements PostDataSource {
  PostDataSourceImpl({
    required this.network,
  });

  final NetworkHelper network;

  @override
  Future<List<PostModel>> getPosts({int page = 1, int? limit}) async {
    int start = page * limitPerPage;
    final result = await network.get(
      APIEndpoints.getPostsUrl + '?_start=$start&_limit=$limitPerPage',
    );
    List postsList = jsonDecode(result);
    return postsList.map((v) => PostModel.fromJson(v)).toList();
  }
}
