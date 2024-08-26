library weather_forecast_main;

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'weather_forecast_main.g.dart';

abstract class WeatherForecastMain
    implements Built<WeatherForecastMain, WeatherForecastMainBuilder> {
  double get temp;

  @BuiltValueField(wireName: 'feels_like')
  double get feelsLike;

  int get humidity;

  WeatherForecastMain._();

  factory WeatherForecastMain(
          [void Function(WeatherForecastMainBuilder) updates]) =
      _$WeatherForecastMain;

  static Serializer<WeatherForecastMain> get serializer =>
      _$weatherForecastMainSerializer;
}
