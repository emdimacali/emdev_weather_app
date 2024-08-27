library serializers;

import 'package:built_collection/built_collection.dart';
import 'package:built_value/standard_json_plugin.dart';
import 'package:built_value/serializer.dart';
import 'package:emdev_weather_app/weather/cubit/weather_state.dart';
import 'package:emdev_weather_app/weather/models/weather.dart';
import 'package:emdev_weather_app/weather/models/weather_info.dart';

part 'serializers.g.dart';

@SerializersFor(
    [Weather, WeatherInfo, WeatherState, WeatherStatus, WeatherCondition])
final Serializers serializers =
    (_$serializers.toBuilder()..addPlugin(StandardJsonPlugin())).build();
