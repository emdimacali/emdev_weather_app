// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'serializers.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializers _$serializers = (new Serializers().toBuilder()
      ..add(City.serializer)
      ..add(Weather.serializer)
      ..add(WeatherForecast.serializer)
      ..add(WeatherForecastMain.serializer)
      ..add(WeatherForecastResult.serializer)
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(Weather)]),
          () => new ListBuilder<Weather>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(WeatherForecast)]),
          () => new ListBuilder<WeatherForecast>()))
    .build();

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
