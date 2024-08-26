// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather_forecast_main.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<WeatherForecastMain> _$weatherForecastMainSerializer =
    new _$WeatherForecastMainSerializer();

class _$WeatherForecastMainSerializer
    implements StructuredSerializer<WeatherForecastMain> {
  @override
  final Iterable<Type> types = const [
    WeatherForecastMain,
    _$WeatherForecastMain
  ];
  @override
  final String wireName = 'WeatherForecastMain';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, WeatherForecastMain object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'temp',
      serializers.serialize(object.temp, specifiedType: const FullType(double)),
      'feels_like',
      serializers.serialize(object.feelsLike,
          specifiedType: const FullType(double)),
      'humidity',
      serializers.serialize(object.humidity,
          specifiedType: const FullType(int)),
    ];

    return result;
  }

  @override
  WeatherForecastMain deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new WeatherForecastMainBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'temp':
          result.temp = serializers.deserialize(value,
              specifiedType: const FullType(double))! as double;
          break;
        case 'feels_like':
          result.feelsLike = serializers.deserialize(value,
              specifiedType: const FullType(double))! as double;
          break;
        case 'humidity':
          result.humidity = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
      }
    }

    return result.build();
  }
}

class _$WeatherForecastMain extends WeatherForecastMain {
  @override
  final double temp;
  @override
  final double feelsLike;
  @override
  final int humidity;

  factory _$WeatherForecastMain(
          [void Function(WeatherForecastMainBuilder)? updates]) =>
      (new WeatherForecastMainBuilder()..update(updates))._build();

  _$WeatherForecastMain._(
      {required this.temp, required this.feelsLike, required this.humidity})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(temp, r'WeatherForecastMain', 'temp');
    BuiltValueNullFieldError.checkNotNull(
        feelsLike, r'WeatherForecastMain', 'feelsLike');
    BuiltValueNullFieldError.checkNotNull(
        humidity, r'WeatherForecastMain', 'humidity');
  }

  @override
  WeatherForecastMain rebuild(
          void Function(WeatherForecastMainBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  WeatherForecastMainBuilder toBuilder() =>
      new WeatherForecastMainBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is WeatherForecastMain &&
        temp == other.temp &&
        feelsLike == other.feelsLike &&
        humidity == other.humidity;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, temp.hashCode);
    _$hash = $jc(_$hash, feelsLike.hashCode);
    _$hash = $jc(_$hash, humidity.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'WeatherForecastMain')
          ..add('temp', temp)
          ..add('feelsLike', feelsLike)
          ..add('humidity', humidity))
        .toString();
  }
}

class WeatherForecastMainBuilder
    implements Builder<WeatherForecastMain, WeatherForecastMainBuilder> {
  _$WeatherForecastMain? _$v;

  double? _temp;
  double? get temp => _$this._temp;
  set temp(double? temp) => _$this._temp = temp;

  double? _feelsLike;
  double? get feelsLike => _$this._feelsLike;
  set feelsLike(double? feelsLike) => _$this._feelsLike = feelsLike;

  int? _humidity;
  int? get humidity => _$this._humidity;
  set humidity(int? humidity) => _$this._humidity = humidity;

  WeatherForecastMainBuilder();

  WeatherForecastMainBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _temp = $v.temp;
      _feelsLike = $v.feelsLike;
      _humidity = $v.humidity;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(WeatherForecastMain other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$WeatherForecastMain;
  }

  @override
  void update(void Function(WeatherForecastMainBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  WeatherForecastMain build() => _build();

  _$WeatherForecastMain _build() {
    final _$result = _$v ??
        new _$WeatherForecastMain._(
            temp: BuiltValueNullFieldError.checkNotNull(
                temp, r'WeatherForecastMain', 'temp'),
            feelsLike: BuiltValueNullFieldError.checkNotNull(
                feelsLike, r'WeatherForecastMain', 'feelsLike'),
            humidity: BuiltValueNullFieldError.checkNotNull(
                humidity, r'WeatherForecastMain', 'humidity'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
