library weather;

import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:emdev_weather_app/serializers.dart';
import 'package:emdev_weather_app/weather/models/weather_info.dart';
import 'package:weather_forecast_repository/weather_forecast_repository.dart'
    as weather_forecast_repository;

part 'weather.g.dart';

abstract class Weather implements Built<Weather, WeatherBuilder> {
  String get city;
  String get country;
  int get sunrise;
  int get sunset;
  BuiltList<WeatherInfo> get forecast;

  Weather._();

  factory Weather([Function(WeatherBuilder b) updates]) = _$Weather;

  static Weather fromRepository(weather_forecast_repository.Weather weather) {
    return Weather((b) => b
      ..city = weather.city
      ..country = weather.country
      ..sunrise = weather.sunrise
      ..sunset = weather.sunset
      ..forecast.replace(weather.forecast
          .map((forecastItem) => WeatherInfo.fromRepository(forecastItem))
          .toList()));
  }

  String toJson() {
    return json.encode(serializers.serializeWith(Weather.serializer, this));
  }

  static Weather? fromJson(String jsonString) {
    return serializers.deserializeWith(
        Weather.serializer, json.decode(jsonString));
  }

  static Serializer<Weather> get serializer => _$weatherSerializer;
}
