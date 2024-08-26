// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather_forecast_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<WeatherForecastResult> _$weatherForecastResultSerializer =
    new _$WeatherForecastResultSerializer();

class _$WeatherForecastResultSerializer
    implements StructuredSerializer<WeatherForecastResult> {
  @override
  final Iterable<Type> types = const [
    WeatherForecastResult,
    _$WeatherForecastResult
  ];
  @override
  final String wireName = 'WeatherForecastResult';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, WeatherForecastResult object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'list',
      serializers.serialize(object.list,
          specifiedType: const FullType(
              BuiltList, const [const FullType(WeatherForecast)])),
      'city',
      serializers.serialize(object.city, specifiedType: const FullType(City)),
    ];

    return result;
  }

  @override
  WeatherForecastResult deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new WeatherForecastResultBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'list':
          result.list.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(WeatherForecast)]))!
              as BuiltList<Object?>);
          break;
        case 'city':
          result.city.replace(serializers.deserialize(value,
              specifiedType: const FullType(City))! as City);
          break;
      }
    }

    return result.build();
  }
}

class _$WeatherForecastResult extends WeatherForecastResult {
  @override
  final BuiltList<WeatherForecast> list;
  @override
  final City city;

  factory _$WeatherForecastResult(
          [void Function(WeatherForecastResultBuilder)? updates]) =>
      (new WeatherForecastResultBuilder()..update(updates))._build();

  _$WeatherForecastResult._({required this.list, required this.city})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        list, r'WeatherForecastResult', 'list');
    BuiltValueNullFieldError.checkNotNull(
        city, r'WeatherForecastResult', 'city');
  }

  @override
  WeatherForecastResult rebuild(
          void Function(WeatherForecastResultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  WeatherForecastResultBuilder toBuilder() =>
      new WeatherForecastResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is WeatherForecastResult &&
        list == other.list &&
        city == other.city;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, list.hashCode);
    _$hash = $jc(_$hash, city.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'WeatherForecastResult')
          ..add('list', list)
          ..add('city', city))
        .toString();
  }
}

class WeatherForecastResultBuilder
    implements Builder<WeatherForecastResult, WeatherForecastResultBuilder> {
  _$WeatherForecastResult? _$v;

  ListBuilder<WeatherForecast>? _list;
  ListBuilder<WeatherForecast> get list =>
      _$this._list ??= new ListBuilder<WeatherForecast>();
  set list(ListBuilder<WeatherForecast>? list) => _$this._list = list;

  CityBuilder? _city;
  CityBuilder get city => _$this._city ??= new CityBuilder();
  set city(CityBuilder? city) => _$this._city = city;

  WeatherForecastResultBuilder();

  WeatherForecastResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _list = $v.list.toBuilder();
      _city = $v.city.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(WeatherForecastResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$WeatherForecastResult;
  }

  @override
  void update(void Function(WeatherForecastResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  WeatherForecastResult build() => _build();

  _$WeatherForecastResult _build() {
    _$WeatherForecastResult _$result;
    try {
      _$result = _$v ??
          new _$WeatherForecastResult._(list: list.build(), city: city.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'list';
        list.build();
        _$failedField = 'city';
        city.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'WeatherForecastResult', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
