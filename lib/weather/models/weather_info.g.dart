// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather_info.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const WeatherCondition _$rain = const WeatherCondition._('rain');
const WeatherCondition _$thunderstorm =
    const WeatherCondition._('thunderstorm');
const WeatherCondition _$snow = const WeatherCondition._('snow');
const WeatherCondition _$atmosphere = const WeatherCondition._('atmosphere');
const WeatherCondition _$clear = const WeatherCondition._('clear');
const WeatherCondition _$clouds = const WeatherCondition._('clouds');

WeatherCondition _$valueOf(String name) {
  switch (name) {
    case 'rain':
      return _$rain;
    case 'thunderstorm':
      return _$thunderstorm;
    case 'snow':
      return _$snow;
    case 'atmosphere':
      return _$atmosphere;
    case 'clear':
      return _$clear;
    case 'clouds':
      return _$clouds;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<WeatherCondition> _$values =
    new BuiltSet<WeatherCondition>(const <WeatherCondition>[
  _$rain,
  _$thunderstorm,
  _$snow,
  _$atmosphere,
  _$clear,
  _$clouds,
]);

Serializer<WeatherCondition> _$weatherConditionSerializer =
    new _$WeatherConditionSerializer();
Serializer<WeatherInfo> _$weatherInfoSerializer = new _$WeatherInfoSerializer();

class _$WeatherConditionSerializer
    implements PrimitiveSerializer<WeatherCondition> {
  @override
  final Iterable<Type> types = const <Type>[WeatherCondition];
  @override
  final String wireName = 'WeatherCondition';

  @override
  Object serialize(Serializers serializers, WeatherCondition object,
          {FullType specifiedType = FullType.unspecified}) =>
      object.name;

  @override
  WeatherCondition deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      WeatherCondition.valueOf(serialized as String);
}

class _$WeatherInfoSerializer implements StructuredSerializer<WeatherInfo> {
  @override
  final Iterable<Type> types = const [WeatherInfo, _$WeatherInfo];
  @override
  final String wireName = 'WeatherInfo';

  @override
  Iterable<Object?> serialize(Serializers serializers, WeatherInfo object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'date',
      serializers.serialize(object.date,
          specifiedType: const FullType(DateTime)),
      'temp',
      serializers.serialize(object.temp, specifiedType: const FullType(double)),
      'feelsLike',
      serializers.serialize(object.feelsLike,
          specifiedType: const FullType(double)),
      'humidity',
      serializers.serialize(object.humidity,
          specifiedType: const FullType(int)),
      'weatherDescription',
      serializers.serialize(object.weatherDescription,
          specifiedType: const FullType(String)),
      'weatherCondition',
      serializers.serialize(object.weatherCondition,
          specifiedType: const FullType(WeatherCondition)),
    ];

    return result;
  }

  @override
  WeatherInfo deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new WeatherInfoBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'date':
          result.date = serializers.deserialize(value,
              specifiedType: const FullType(DateTime))! as DateTime;
          break;
        case 'temp':
          result.temp = serializers.deserialize(value,
              specifiedType: const FullType(double))! as double;
          break;
        case 'feelsLike':
          result.feelsLike = serializers.deserialize(value,
              specifiedType: const FullType(double))! as double;
          break;
        case 'humidity':
          result.humidity = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'weatherDescription':
          result.weatherDescription = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'weatherCondition':
          result.weatherCondition = serializers.deserialize(value,
                  specifiedType: const FullType(WeatherCondition))!
              as WeatherCondition;
          break;
      }
    }

    return result.build();
  }
}

class _$WeatherInfo extends WeatherInfo {
  @override
  final DateTime date;
  @override
  final double temp;
  @override
  final double feelsLike;
  @override
  final int humidity;
  @override
  final String weatherDescription;
  @override
  final WeatherCondition weatherCondition;

  factory _$WeatherInfo([void Function(WeatherInfoBuilder)? updates]) =>
      (new WeatherInfoBuilder()..update(updates))._build();

  _$WeatherInfo._(
      {required this.date,
      required this.temp,
      required this.feelsLike,
      required this.humidity,
      required this.weatherDescription,
      required this.weatherCondition})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(date, r'WeatherInfo', 'date');
    BuiltValueNullFieldError.checkNotNull(temp, r'WeatherInfo', 'temp');
    BuiltValueNullFieldError.checkNotNull(
        feelsLike, r'WeatherInfo', 'feelsLike');
    BuiltValueNullFieldError.checkNotNull(humidity, r'WeatherInfo', 'humidity');
    BuiltValueNullFieldError.checkNotNull(
        weatherDescription, r'WeatherInfo', 'weatherDescription');
    BuiltValueNullFieldError.checkNotNull(
        weatherCondition, r'WeatherInfo', 'weatherCondition');
  }

  @override
  WeatherInfo rebuild(void Function(WeatherInfoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  WeatherInfoBuilder toBuilder() => new WeatherInfoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is WeatherInfo &&
        date == other.date &&
        temp == other.temp &&
        feelsLike == other.feelsLike &&
        humidity == other.humidity &&
        weatherDescription == other.weatherDescription &&
        weatherCondition == other.weatherCondition;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, date.hashCode);
    _$hash = $jc(_$hash, temp.hashCode);
    _$hash = $jc(_$hash, feelsLike.hashCode);
    _$hash = $jc(_$hash, humidity.hashCode);
    _$hash = $jc(_$hash, weatherDescription.hashCode);
    _$hash = $jc(_$hash, weatherCondition.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'WeatherInfo')
          ..add('date', date)
          ..add('temp', temp)
          ..add('feelsLike', feelsLike)
          ..add('humidity', humidity)
          ..add('weatherDescription', weatherDescription)
          ..add('weatherCondition', weatherCondition))
        .toString();
  }
}

class WeatherInfoBuilder implements Builder<WeatherInfo, WeatherInfoBuilder> {
  _$WeatherInfo? _$v;

  DateTime? _date;
  DateTime? get date => _$this._date;
  set date(DateTime? date) => _$this._date = date;

  double? _temp;
  double? get temp => _$this._temp;
  set temp(double? temp) => _$this._temp = temp;

  double? _feelsLike;
  double? get feelsLike => _$this._feelsLike;
  set feelsLike(double? feelsLike) => _$this._feelsLike = feelsLike;

  int? _humidity;
  int? get humidity => _$this._humidity;
  set humidity(int? humidity) => _$this._humidity = humidity;

  String? _weatherDescription;
  String? get weatherDescription => _$this._weatherDescription;
  set weatherDescription(String? weatherDescription) =>
      _$this._weatherDescription = weatherDescription;

  WeatherCondition? _weatherCondition;
  WeatherCondition? get weatherCondition => _$this._weatherCondition;
  set weatherCondition(WeatherCondition? weatherCondition) =>
      _$this._weatherCondition = weatherCondition;

  WeatherInfoBuilder();

  WeatherInfoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _date = $v.date;
      _temp = $v.temp;
      _feelsLike = $v.feelsLike;
      _humidity = $v.humidity;
      _weatherDescription = $v.weatherDescription;
      _weatherCondition = $v.weatherCondition;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(WeatherInfo other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$WeatherInfo;
  }

  @override
  void update(void Function(WeatherInfoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  WeatherInfo build() => _build();

  _$WeatherInfo _build() {
    final _$result = _$v ??
        new _$WeatherInfo._(
            date: BuiltValueNullFieldError.checkNotNull(
                date, r'WeatherInfo', 'date'),
            temp: BuiltValueNullFieldError.checkNotNull(
                temp, r'WeatherInfo', 'temp'),
            feelsLike: BuiltValueNullFieldError.checkNotNull(
                feelsLike, r'WeatherInfo', 'feelsLike'),
            humidity: BuiltValueNullFieldError.checkNotNull(
                humidity, r'WeatherInfo', 'humidity'),
            weatherDescription: BuiltValueNullFieldError.checkNotNull(
                weatherDescription, r'WeatherInfo', 'weatherDescription'),
            weatherCondition: BuiltValueNullFieldError.checkNotNull(
                weatherCondition, r'WeatherInfo', 'weatherCondition'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
