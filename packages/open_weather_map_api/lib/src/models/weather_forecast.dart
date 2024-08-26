library weather_forecast;

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:open_weather_map_api/src/models/weather.dart';
import 'weather_forecast_main.dart';

part 'weather_forecast.g.dart';

abstract class WeatherForecast
    implements Built<WeatherForecast, WeatherForecastBuilder> {
  @BuiltValueField(wireName: 'dt')
  int get date;

  @BuiltValueField(wireName: 'dt_txt')
  String get dateText;

  WeatherForecastMain get main;

  BuiltList<Weather> get weather;

  WeatherForecast._();

  factory WeatherForecast([void Function(WeatherForecastBuilder b) updates]) =
      _$WeatherForecast;

  static Serializer<WeatherForecast> get serializer =>
      _$weatherForecastSerializer;
}
