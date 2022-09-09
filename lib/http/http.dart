import 'package:dio/dio.dart';
import 'package:f_logs/f_logs.dart';

class HttpUtil {
  static var dio = Dio();

  static void init() {
    dio.options.contentType = 'application/json';
    dio.interceptors.add(InterceptorsWrapper(onRequest: (options, handler) {
      FLog.info(text: "onRequest, url: ${options.path}");
      return handler.next(options);
    }, onResponse: (response, handler) {
      FLog.info(text: "onResponse, code ${response.statusCode}, url: ${response.realUri}");
      FLog.debug(text: 'onResponse：${response.data}');
      handler.next(response);
    }, onError: (DioError e, handler) {
      FLog.error(text: 'http onError', exception: e);
      return handler.next(e);
    }));
  }

  static Future<Response> get(
    String path, {
    Map<String, dynamic>? queryParameters,
    Options? options,
    CancelToken? cancelToken,
    ProgressCallback? onReceiveProgress,
  }) {
    return dio.get(path, queryParameters: queryParameters, options: options, cancelToken: cancelToken);
  }
}
