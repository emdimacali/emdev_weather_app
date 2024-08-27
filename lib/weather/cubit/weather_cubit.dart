import 'package:emdev_weather_app/serializers.dart';
import 'package:emdev_weather_app/weather/models/weather.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:weather_forecast_repository/weather_forecast_repository.dart'
    hide Weather;

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

  Future<void> fetchWeatherForecast(double latitude, double longitude) async {
    // This is where we call the weather forecast repository
    emit(state.rebuild((b) => b..weatherStatus = WeatherStatus.loading));

    try {
      final weatherForecast = await _weatherForecastRepository
          .getWeatherForecast(latitude: latitude, longitude: longitude);
      print('weatehrForecast: $weatherForecast');

      final weather = Weather.fromRepository(weatherForecast);
      print('WEATHER : $weather');

      emit(state.rebuild((b) => b
        ..weather.replace(weather)
        ..weatherStatus = WeatherStatus.success));
    } on Exception {
      emit(state.rebuild((b) => b..weatherStatus = WeatherStatus.failure));
    }
  }
}
