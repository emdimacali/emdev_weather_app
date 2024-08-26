import 'package:dio/dio.dart';
import 'package:open_weather_map_api/src/interceptors/api_key_interceptor.dart';
import 'package:open_weather_map_api/src/models/weather_forecast_result.dart';

/// Exception thrown when forecast request fails
class WeatherForecastRequestFailure implements Exception {}

/// Exception thrown when weather forecast failed to deserialize
class WeatherForecastDeserializationFailure implements Exception {}

class OpenWeatherMapApiClient {
  OpenWeatherMapApiClient({Dio? dio, required String apiKey})
      : _dio = dio ?? Dio(BaseOptions(baseUrl: _baseUrl))
          ..interceptors.add(ApiKeyInterceptor(apiKey: apiKey));

  static const _baseUrl = 'https://api.openweathermap.org/data/2.5';

  final Dio _dio;

  Future<WeatherForecastResult> getWeatherForecast(
      {required double latitude, required double longitude}) async {
    final response = await _dio.get('/forecast', queryParameters: {
      'lat': latitude,
      'lon': longitude,
      'units': 'metric'
    });

    if (response.statusCode != 200) throw WeatherForecastRequestFailure();

    final weatherForecastResult = WeatherForecastResult.fromJson(response.data);

    if (weatherForecastResult == null) {
      throw WeatherForecastDeserializationFailure();
    }

    return weatherForecastResult;
  }
}
