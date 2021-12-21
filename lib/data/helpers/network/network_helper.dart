abstract class NetworkHelper {
  Future<String> get(String url, {Map<String, String>? headers});

  Future<Map<String, dynamic>> post(String url,
      {Map<String, String>? headers, Map? body});

  Future<Map<String, dynamic>> delete(String url, {Map? headers});

  Future<Map<String, dynamic>> put(String url, {Map? headers, body, encoding});

  Future<Map<String, dynamic>> multipart(String url,
      {Map headers, body, files});
}
