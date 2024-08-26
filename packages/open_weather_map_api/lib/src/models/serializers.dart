library serializers;

import 'package:built_collection/built_collection.dart';
import 'package:built_value/standard_json_plugin.dart';
import 'package:built_value/serializer.dart';
import 'package:open_weather_map_api/src/models/city.dart';
import 'package:open_weather_map_api/src/models/weather.dart';
import 'package:open_weather_map_api/src/models/weather_forecast.dart';
import 'package:open_weather_map_api/src/models/weather_forecast_main.dart';
import 'package:open_weather_map_api/src/models/weather_forecast_result.dart';

part 'serializers.g.dart';

@SerializersFor([
  WeatherForecastResult,
  City,
  WeatherForecast,
  WeatherForecastMain,
  Weather,
])
final Serializers serializers =
    (_$serializers.toBuilder()..addPlugin(StandardJsonPlugin())).build();
