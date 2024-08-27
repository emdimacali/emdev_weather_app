import 'package:emdev_weather_app/app.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:path_provider/path_provider.dart';
import 'package:weather_forecast_repository/weather_forecast_repository.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  HydratedBloc.storage = await HydratedStorage.build(
    storageDirectory: kIsWeb
        ? HydratedStorage.webStorageDirectory
        : await getTemporaryDirectory(),
  );

  const openWeatherMapApiKey = String.fromEnvironment('OPEN_WEATHER_MAP_KEY');
  if (openWeatherMapApiKey.isEmpty) {
    throw AssertionError('OPEN_WEATHER_MAP_KEY is not set');
  }
  runApp(WeatherApp(
      weatherForecastRepository:
          WeatherForecastRepository(apiKey: openWeatherMapApiKey)));
}
