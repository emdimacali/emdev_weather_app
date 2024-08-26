// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather_forecast.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<WeatherForecast> _$weatherForecastSerializer =
    new _$WeatherForecastSerializer();

class _$WeatherForecastSerializer
    implements StructuredSerializer<WeatherForecast> {
  @override
  final Iterable<Type> types = const [WeatherForecast, _$WeatherForecast];
  @override
  final String wireName = 'WeatherForecast';

  @override
  Iterable<Object?> serialize(Serializers serializers, WeatherForecast object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'dt',
      serializers.serialize(object.date, specifiedType: const FullType(int)),
      'dt_txt',
      serializers.serialize(object.dateText,
          specifiedType: const FullType(String)),
      'main',
      serializers.serialize(object.main,
          specifiedType: const FullType(WeatherForecastMain)),
      'weather',
      serializers.serialize(object.weather,
          specifiedType:
              const FullType(BuiltList, const [const FullType(Weather)])),
    ];

    return result;
  }

  @override
  WeatherForecast deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new WeatherForecastBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'dt':
          result.date = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'dt_txt':
          result.dateText = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'main':
          result.main.replace(serializers.deserialize(value,
                  specifiedType: const FullType(WeatherForecastMain))!
              as WeatherForecastMain);
          break;
        case 'weather':
          result.weather.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(Weather)]))!
              as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$WeatherForecast extends WeatherForecast {
  @override
  final int date;
  @override
  final String dateText;
  @override
  final WeatherForecastMain main;
  @override
  final BuiltList<Weather> weather;

  factory _$WeatherForecast([void Function(WeatherForecastBuilder)? updates]) =>
      (new WeatherForecastBuilder()..update(updates))._build();

  _$WeatherForecast._(
      {required this.date,
      required this.dateText,
      required this.main,
      required this.weather})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(date, r'WeatherForecast', 'date');
    BuiltValueNullFieldError.checkNotNull(
        dateText, r'WeatherForecast', 'dateText');
    BuiltValueNullFieldError.checkNotNull(main, r'WeatherForecast', 'main');
    BuiltValueNullFieldError.checkNotNull(
        weather, r'WeatherForecast', 'weather');
  }

  @override
  WeatherForecast rebuild(void Function(WeatherForecastBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  WeatherForecastBuilder toBuilder() =>
      new WeatherForecastBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is WeatherForecast &&
        date == other.date &&
        dateText == other.dateText &&
        main == other.main &&
        weather == other.weather;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, date.hashCode);
    _$hash = $jc(_$hash, dateText.hashCode);
    _$hash = $jc(_$hash, main.hashCode);
    _$hash = $jc(_$hash, weather.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'WeatherForecast')
          ..add('date', date)
          ..add('dateText', dateText)
          ..add('main', main)
          ..add('weather', weather))
        .toString();
  }
}

class WeatherForecastBuilder
    implements Builder<WeatherForecast, WeatherForecastBuilder> {
  _$WeatherForecast? _$v;

  int? _date;
  int? get date => _$this._date;
  set date(int? date) => _$this._date = date;

  String? _dateText;
  String? get dateText => _$this._dateText;
  set dateText(String? dateText) => _$this._dateText = dateText;

  WeatherForecastMainBuilder? _main;
  WeatherForecastMainBuilder get main =>
      _$this._main ??= new WeatherForecastMainBuilder();
  set main(WeatherForecastMainBuilder? main) => _$this._main = main;

  ListBuilder<Weather>? _weather;
  ListBuilder<Weather> get weather =>
      _$this._weather ??= new ListBuilder<Weather>();
  set weather(ListBuilder<Weather>? weather) => _$this._weather = weather;

  WeatherForecastBuilder();

  WeatherForecastBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _date = $v.date;
      _dateText = $v.dateText;
      _main = $v.main.toBuilder();
      _weather = $v.weather.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(WeatherForecast other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$WeatherForecast;
  }

  @override
  void update(void Function(WeatherForecastBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  WeatherForecast build() => _build();

  _$WeatherForecast _build() {
    _$WeatherForecast _$result;
    try {
      _$result = _$v ??
          new _$WeatherForecast._(
              date: BuiltValueNullFieldError.checkNotNull(
                  date, r'WeatherForecast', 'date'),
              dateText: BuiltValueNullFieldError.checkNotNull(
                  dateText, r'WeatherForecast', 'dateText'),
              main: main.build(),
              weather: weather.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'main';
        main.build();
        _$failedField = 'weather';
        weather.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'WeatherForecast', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
