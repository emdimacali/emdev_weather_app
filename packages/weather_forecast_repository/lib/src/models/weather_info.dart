library weather_info;

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';

part 'weather_info.g.dart';

abstract class WeatherInfo implements Built<WeatherInfo, WeatherInfoBuilder> {
  DateTime get date;
  double get temp;
  double get feelsLike;
  int get humidity;
  String get weatherDescription;
  WeatherCondition get weatherCondition;

  WeatherInfo._();

  factory WeatherInfo([void Function(WeatherInfoBuilder b) updates]) =
      _$WeatherInfo;
}

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
}
