import 'package:dio/dio.dart';

class HttpUtil {
  static var dio = Dio();

  static void init() {
    dio.options.contentType = 'application/json';
  }

  static Future<Response> get(
    String path, {
    Map<String, dynamic>? queryParameters,
    Options? options,
    CancelToken? cancelToken,
    ProgressCallback? onReceiveProgress,
  }) {
    return dio.get(path,
        queryParameters: queryParameters,
        options: options,
        cancelToken: cancelToken);
  }
}
