library weather_forecast;

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:weather_forecast_repository/weather_forecast_repository.dart';

part 'weather.g.dart';

abstract class Weather implements Built<Weather, WeatherBuilder> {
  String get city;
  String get country;
  int get sunrise;
  int get sunset;
  BuiltList<WeatherInfo> get forecast;

  Weather._();

  factory Weather([void Function(WeatherBuilder b) updates]) = _$Weather;
}
