import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:kwg/core/error/exception.dart';
import 'package:kwg/data/helpers/network/network_helper.dart';

class NetworkHelperImpl implements NetworkHelper {
  @override
  Future<Map<String, dynamic>> delete(String url, {Map? headers}) {
    throw UnimplementedError();
  }

  @override
  Future<String> get(String url, {Map<String, String>? headers}) async {
    try {
      final response = await http.get(
        Uri.parse(url),
        headers: _appendHeader(customHeaders: headers),
      );

      return _handleResponse(response);
    } catch (e) {
      throw ServerException(message: e.toString());
    }
  }

  @override
  Future<Map<String, dynamic>> multipart(String url,
      {Map? headers, body, files}) {
    throw UnimplementedError();
  }

  @override
  Future<Map<String, dynamic>> post(String url,
      {Map<String, String>? headers, Map? body}) async {
    try {
      final response = await http.post(
        Uri.parse(url),
        body: jsonEncode(body),
        headers: _appendHeader(customHeaders: headers),
      );

      return _handleResponse1(response);
    } catch (e) {
      throw ServerException(message: e.toString());
    }
  }

  @override
  Future<Map<String, dynamic>> put(String url, {Map? headers, body, encoding}) {
    throw UnimplementedError();
  }

  String _handleResponse(http.Response response) {
    final int statusCode = response.statusCode;

    if (statusCode >= 400) {
      Map errorJson = jsonDecode(response.body.toString());
      throw ServerException(message: errorJson['error']);
    } else {
      return response.body;
    }
  }

  Map<String, dynamic> _handleResponse1(http.Response response) {
    final int statusCode = response.statusCode;

    if (statusCode >= 400) {
      Map errorJson = jsonDecode(response.body.toString());
      throw ServerException(message: errorJson['error']);
    } else {
      return jsonDecode(response.body);
    }
  }

  Map<String, String> _appendHeader({Map<String, String>? customHeaders}) {
    Map<String, String> headers = {'Content-Type': 'application/json'};

    if (customHeaders != null) headers.addAll(customHeaders);

    return headers;
  }
}
