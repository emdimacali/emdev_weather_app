library city;

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'city.g.dart';

abstract class City implements Built<City, CityBuilder> {
  String get name;
  String get country;
  int get sunrise;
  int get sunset;

  City._();

  factory City([void Function(CityBuilder b) updates]) = _$City;

  static Serializer<City> get serializer => _$citySerializer;
}
