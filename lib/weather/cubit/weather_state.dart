library weather_state;

import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:emdev_weather_app/serializers.dart';
import 'package:emdev_weather_app/weather/models/weather.dart';

part 'weather_state.g.dart';

class WeatherStatus extends EnumClass {
  static const WeatherStatus initial = _$initial;
  static const WeatherStatus locationDisabled = _$locationDisabled;
  static const WeatherStatus permissionDenied = _$permissionDenied;
  static const WeatherStatus loading = _$loading;
  static const WeatherStatus success = _$success;
  static const WeatherStatus failure = _$failure;

  const WeatherStatus._(super.name);

  static BuiltSet<WeatherStatus> get values => _$values;
  static WeatherStatus valueOf(String name) => _$valueOf(name);

  static Serializer<WeatherStatus> get serializer => _$weatherStatusSerializer;
}

extension WeatherStatusX on WeatherStatus {
  bool get isInitial => this == WeatherStatus.initial;
  bool get isLocationDisabled => this == WeatherStatus.locationDisabled;
  bool get isPermissionDenied => this == WeatherStatus.permissionDenied;
  bool get isLoading => this == WeatherStatus.loading;
  bool get isSuccess => this == WeatherStatus.success;
  bool get isFailure => this == WeatherStatus.failure;
}

abstract class WeatherState
    implements Built<WeatherState, WeatherStateBuilder> {
  WeatherStatus get weatherStatus;

  Weather? get weather;

  WeatherState._();

  factory WeatherState([void Function(WeatherStateBuilder b) updates]) =
      _$WeatherState;

  String toJson() {
    return json
        .encode(serializers.serializeWith(WeatherState.serializer, this));
  }

  static WeatherState? fromJson(String jsonString) {
    return serializers.deserializeWith(
        WeatherState.serializer, json.decode(jsonString));
  }

  factory WeatherState.initial() {
    return WeatherState((b) => b
      ..weatherStatus = WeatherStatus.initial
      ..weather = null);
  }

  static Serializer<WeatherState> get serializer => _$weatherStateSerializer;
}
