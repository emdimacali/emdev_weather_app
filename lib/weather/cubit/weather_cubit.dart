import 'package:emdev_weather_app/serializers.dart';
import 'package:emdev_weather_app/weather/models/weather.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:weather_forecast_repository/weather_forecast_repository.dart'
    hide Weather;
import 'package:geolocator/geolocator.dart';

import 'weather_state.dart';

class WeatherCubit extends HydratedCubit<WeatherState> {
  WeatherCubit(this._weatherForecastRepository) : super(WeatherState.initial());

  final WeatherForecastRepository _weatherForecastRepository;

  @override
  WeatherState fromJson(Map<String, dynamic> json) {
    try {
      return serializers.deserializeWith(WeatherState.serializer, json)!;
    } catch (e) {
      return WeatherState.initial();
    }
  }

  @override
  Map<String, dynamic> toJson(WeatherState state) {
    return serializers.serializeWith(WeatherState.serializer, state)!
        as Map<String, dynamic>;
  }

  Future<Position?> _getLocation() async {
    bool serviceEnabled;
    LocationPermission permission;

    // Test if location services are enabled.
    serviceEnabled = await Geolocator.isLocationServiceEnabled();

    if (!serviceEnabled) {
      emit(state
          .rebuild((b) => b..weatherStatus = WeatherStatus.locationDisabled));
      return null;
    }

    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        emit(state
            .rebuild((b) => b..weatherStatus = WeatherStatus.permissionDenied));
        return null;
      }
    }

    if (permission == LocationPermission.deniedForever) {
      emit(state
          .rebuild((b) => b..weatherStatus = WeatherStatus.permissionDenied));
      return null;
    }
    return await Geolocator.getCurrentPosition();
  }

  Future<void> fetchWeatherForecast() async {
    // This is where we call the weather forecast repository
    emit(state.rebuild((b) => b..weatherStatus = WeatherStatus.loading));

    try {
      final position = await _getLocation();

      if (position == null) {
        return;
      }

      final weatherForecast =
          await _weatherForecastRepository.getWeatherForecast(
              latitude: position.latitude, longitude: position.longitude);

      final weather = Weather.fromRepository(weatherForecast);

      emit(state.rebuild((b) => b
        ..weather.replace(weather)
        ..weatherStatus = WeatherStatus.success));
    } on Exception {
      emit(state.rebuild((b) => b..weatherStatus = WeatherStatus.failure));
    }
  }
}
