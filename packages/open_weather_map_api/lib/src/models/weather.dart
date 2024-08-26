library weather;

import 'dart:convert';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:open_weather_map_api/src/models/serializers.dart';

part 'weather.g.dart';

abstract class Weather implements Built<Weather, WeatherBuilder> {
  int get id;
  String get main;
  String get description;
  String get icon;

  Weather._();

  factory Weather([void Function(WeatherBuilder b) updates]) = _$Weather;

  String toJson() {
    return json.encode(serializers.serializeWith(Weather.serializer, this));
  }

  static Serializer<Weather> get serializer => _$weatherSerializer;
}
