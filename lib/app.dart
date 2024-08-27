import 'package:emdev_weather_app/weather/cubit/weather_cubit.dart';
import 'package:emdev_weather_app/weather/view/weather_page.dart';
import 'package:flutter/material.dart';
import 'package:weather_forecast_repository/weather_forecast_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class WeatherApp extends StatelessWidget {
  const WeatherApp(
      {required WeatherForecastRepository weatherForecastRepository, super.key})
      : _weatherForecastRepository = weatherForecastRepository;

  final WeatherForecastRepository _weatherForecastRepository;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => WeatherCubit(_weatherForecastRepository),
      child: const WeatherAppView(),
    );
  }
}

class WeatherAppView extends StatelessWidget {
  const WeatherAppView({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.purple),
      ),
      home: const WeatherPage(),
    );
  }
}
