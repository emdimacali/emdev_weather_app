library weather_info;

import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:emdev_weather_app/serializers.dart';
import 'package:weather_forecast_repository/weather_forecast_repository.dart'
    as weather_forecast_repository;

part 'weather_info.g.dart';

class WeatherCondition extends EnumClass {
  static const WeatherCondition rain = _$rain;
  static const WeatherCondition thunderstorm = _$thunderstorm;
  static const WeatherCondition snow = _$snow;
  static const WeatherCondition atmosphere = _$atmosphere;
  static const WeatherCondition clear = _$clear;
  static const WeatherCondition clouds = _$clouds;

  const WeatherCondition._(super.name);

  static BuiltSet<WeatherCondition> get values => _$values;
  static WeatherCondition valueOf(String name) => _$valueOf(name);

  static Serializer<WeatherCondition> get serializer =>
      _$weatherConditionSerializer;
}

abstract class WeatherInfo implements Built<WeatherInfo, WeatherInfoBuilder> {
  DateTime get date;
  double get temp;
  double get feelsLike;
  int get humidity;
  String get weatherDescription;
  WeatherCondition get weatherCondition;

  WeatherInfo._();

  factory WeatherInfo([Function(WeatherInfoBuilder b) updates]) = _$WeatherInfo;

  /// Static method to create a Weather instance from a weather_repository.Weather instance
  static WeatherInfo fromRepository(
      weather_forecast_repository.WeatherInfo weather) {
    return WeatherInfo((b) => b
      ..date = weather.date
      ..temp = weather.temp
      ..feelsLike = weather.feelsLike
      ..humidity = weather.humidity
      ..weatherDescription = weather.weatherDescription
      ..weatherCondition =
          WeatherCondition.valueOf(weather.weatherCondition.name));
  }

  String toJson() {
    return json.encode(serializers.serializeWith(WeatherInfo.serializer, this));
  }

  static WeatherInfo? fromJson(String jsonString) {
    return serializers.deserializeWith(
        WeatherInfo.serializer, json.decode(jsonString));
  }

  static Serializer<WeatherInfo> get serializer => _$weatherInfoSerializer;
}
