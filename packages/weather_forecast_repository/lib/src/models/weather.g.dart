// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Weather extends Weather {
  @override
  final String city;
  @override
  final String country;
  @override
  final int sunrise;
  @override
  final int sunset;
  @override
  final BuiltList<WeatherInfo> forecast;

  factory _$Weather([void Function(WeatherBuilder)? updates]) =>
      (new WeatherBuilder()..update(updates))._build();

  _$Weather._(
      {required this.city,
      required this.country,
      required this.sunrise,
      required this.sunset,
      required this.forecast})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(city, r'Weather', 'city');
    BuiltValueNullFieldError.checkNotNull(country, r'Weather', 'country');
    BuiltValueNullFieldError.checkNotNull(sunrise, r'Weather', 'sunrise');
    BuiltValueNullFieldError.checkNotNull(sunset, r'Weather', 'sunset');
    BuiltValueNullFieldError.checkNotNull(forecast, r'Weather', 'forecast');
  }

  @override
  Weather rebuild(void Function(WeatherBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  WeatherBuilder toBuilder() => new WeatherBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Weather &&
        city == other.city &&
        country == other.country &&
        sunrise == other.sunrise &&
        sunset == other.sunset &&
        forecast == other.forecast;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, city.hashCode);
    _$hash = $jc(_$hash, country.hashCode);
    _$hash = $jc(_$hash, sunrise.hashCode);
    _$hash = $jc(_$hash, sunset.hashCode);
    _$hash = $jc(_$hash, forecast.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Weather')
          ..add('city', city)
          ..add('country', country)
          ..add('sunrise', sunrise)
          ..add('sunset', sunset)
          ..add('forecast', forecast))
        .toString();
  }
}

class WeatherBuilder implements Builder<Weather, WeatherBuilder> {
  _$Weather? _$v;

  String? _city;
  String? get city => _$this._city;
  set city(String? city) => _$this._city = city;

  String? _country;
  String? get country => _$this._country;
  set country(String? country) => _$this._country = country;

  int? _sunrise;
  int? get sunrise => _$this._sunrise;
  set sunrise(int? sunrise) => _$this._sunrise = sunrise;

  int? _sunset;
  int? get sunset => _$this._sunset;
  set sunset(int? sunset) => _$this._sunset = sunset;

  ListBuilder<WeatherInfo>? _forecast;
  ListBuilder<WeatherInfo> get forecast =>
      _$this._forecast ??= new ListBuilder<WeatherInfo>();
  set forecast(ListBuilder<WeatherInfo>? forecast) =>
      _$this._forecast = forecast;

  WeatherBuilder();

  WeatherBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _city = $v.city;
      _country = $v.country;
      _sunrise = $v.sunrise;
      _sunset = $v.sunset;
      _forecast = $v.forecast.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Weather other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Weather;
  }

  @override
  void update(void Function(WeatherBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Weather build() => _build();

  _$Weather _build() {
    _$Weather _$result;
    try {
      _$result = _$v ??
          new _$Weather._(
              city: BuiltValueNullFieldError.checkNotNull(
                  city, r'Weather', 'city'),
              country: BuiltValueNullFieldError.checkNotNull(
                  country, r'Weather', 'country'),
              sunrise: BuiltValueNullFieldError.checkNotNull(
                  sunrise, r'Weather', 'sunrise'),
              sunset: BuiltValueNullFieldError.checkNotNull(
                  sunset, r'Weather', 'sunset'),
              forecast: forecast.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'forecast';
        forecast.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Weather', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
