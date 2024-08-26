library weather;

import 'dart:convert';

import 'package:built_collection/built_collection.dart';
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

  factory Weather([updates(WeatherBuilder b)]) = _$Weather;

  String toJson() {
    return json.encode(serializers.serializeWith(Weather.serializer, this));
  }

  static Serializer<Weather> get serializer => _$weatherSerializer;
}
