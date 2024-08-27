// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather_state.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const WeatherStatus _$initial = const WeatherStatus._('initial');
const WeatherStatus _$locationDisabled =
    const WeatherStatus._('locationDisabled');
const WeatherStatus _$permissionDenied =
    const WeatherStatus._('permissionDenied');
const WeatherStatus _$loading = const WeatherStatus._('loading');
const WeatherStatus _$success = const WeatherStatus._('success');
const WeatherStatus _$failure = const WeatherStatus._('failure');

WeatherStatus _$valueOf(String name) {
  switch (name) {
    case 'initial':
      return _$initial;
    case 'locationDisabled':
      return _$locationDisabled;
    case 'permissionDenied':
      return _$permissionDenied;
    case 'loading':
      return _$loading;
    case 'success':
      return _$success;
    case 'failure':
      return _$failure;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<WeatherStatus> _$values =
    new BuiltSet<WeatherStatus>(const <WeatherStatus>[
  _$initial,
  _$locationDisabled,
  _$permissionDenied,
  _$loading,
  _$success,
  _$failure,
]);

Serializer<WeatherStatus> _$weatherStatusSerializer =
    new _$WeatherStatusSerializer();
Serializer<WeatherState> _$weatherStateSerializer =
    new _$WeatherStateSerializer();

class _$WeatherStatusSerializer implements PrimitiveSerializer<WeatherStatus> {
  @override
  final Iterable<Type> types = const <Type>[WeatherStatus];
  @override
  final String wireName = 'WeatherStatus';

  @override
  Object serialize(Serializers serializers, WeatherStatus object,
          {FullType specifiedType = FullType.unspecified}) =>
      object.name;

  @override
  WeatherStatus deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      WeatherStatus.valueOf(serialized as String);
}

class _$WeatherStateSerializer implements StructuredSerializer<WeatherState> {
  @override
  final Iterable<Type> types = const [WeatherState, _$WeatherState];
  @override
  final String wireName = 'WeatherState';

  @override
  Iterable<Object?> serialize(Serializers serializers, WeatherState object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'weatherStatus',
      serializers.serialize(object.weatherStatus,
          specifiedType: const FullType(WeatherStatus)),
    ];
    Object? value;
    value = object.weather;
    if (value != null) {
      result
        ..add('weather')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(Weather)));
    }
    return result;
  }

  @override
  WeatherState deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new WeatherStateBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'weatherStatus':
          result.weatherStatus = serializers.deserialize(value,
              specifiedType: const FullType(WeatherStatus))! as WeatherStatus;
          break;
        case 'weather':
          result.weather.replace(serializers.deserialize(value,
              specifiedType: const FullType(Weather))! as Weather);
          break;
      }
    }

    return result.build();
  }
}

class _$WeatherState extends WeatherState {
  @override
  final WeatherStatus weatherStatus;
  @override
  final Weather? weather;

  factory _$WeatherState([void Function(WeatherStateBuilder)? updates]) =>
      (new WeatherStateBuilder()..update(updates))._build();

  _$WeatherState._({required this.weatherStatus, this.weather}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        weatherStatus, r'WeatherState', 'weatherStatus');
  }

  @override
  WeatherState rebuild(void Function(WeatherStateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  WeatherStateBuilder toBuilder() => new WeatherStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is WeatherState &&
        weatherStatus == other.weatherStatus &&
        weather == other.weather;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, weatherStatus.hashCode);
    _$hash = $jc(_$hash, weather.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'WeatherState')
          ..add('weatherStatus', weatherStatus)
          ..add('weather', weather))
        .toString();
  }
}

class WeatherStateBuilder
    implements Builder<WeatherState, WeatherStateBuilder> {
  _$WeatherState? _$v;

  WeatherStatus? _weatherStatus;
  WeatherStatus? get weatherStatus => _$this._weatherStatus;
  set weatherStatus(WeatherStatus? weatherStatus) =>
      _$this._weatherStatus = weatherStatus;

  WeatherBuilder? _weather;
  WeatherBuilder get weather => _$this._weather ??= new WeatherBuilder();
  set weather(WeatherBuilder? weather) => _$this._weather = weather;

  WeatherStateBuilder();

  WeatherStateBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _weatherStatus = $v.weatherStatus;
      _weather = $v.weather?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(WeatherState other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$WeatherState;
  }

  @override
  void update(void Function(WeatherStateBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  WeatherState build() => _build();

  _$WeatherState _build() {
    _$WeatherState _$result;
    try {
      _$result = _$v ??
          new _$WeatherState._(
              weatherStatus: BuiltValueNullFieldError.checkNotNull(
                  weatherStatus, r'WeatherState', 'weatherStatus'),
              weather: _weather?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'weather';
        _weather?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'WeatherState', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
