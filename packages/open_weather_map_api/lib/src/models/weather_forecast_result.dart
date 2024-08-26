library weather_forecast_result;

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:open_weather_map_api/src/models/city.dart';
import 'package:open_weather_map_api/src/models/serializers.dart';
import 'package:open_weather_map_api/src/models/weather_forecast.dart';

part 'weather_forecast_result.g.dart';

abstract class WeatherForecastResult
    implements Built<WeatherForecastResult, WeatherForecastResultBuilder> {
  BuiltList<WeatherForecast> get list;

  City get city;

  WeatherForecastResult._();

  factory WeatherForecastResult(
          [void Function(WeatherForecastResultBuilder b) updates]) =
      _$WeatherForecastResult;

  static WeatherForecastResult? fromJson(Map<String, dynamic> map) {
    try {
      return serializers.deserializeWith(WeatherForecastResult.serializer, map);
    } catch (error) {
      return null;
    }
  }

  static Serializer<WeatherForecastResult> get serializer =>
      _$weatherForecastResultSerializer;
}
