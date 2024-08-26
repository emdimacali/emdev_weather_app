import 'package:dio/dio.dart';

class ApiKeyInterceptor extends Interceptor {
  ApiKeyInterceptor({required String apiKey}) : _apiKey = apiKey;

  final String _apiKey;

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    options.queryParameters['appid'] = _apiKey;

    super.onRequest(options, handler);
  }
}
