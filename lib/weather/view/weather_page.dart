import 'package:emdev_weather_app/weather/cubit/weather_cubit.dart';
import 'package:emdev_weather_app/weather/cubit/weather_state.dart';
import 'package:emdev_weather_app/weather/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class WeatherPage extends StatefulWidget {
  const WeatherPage({super.key});

  @override
  State<WeatherPage> createState() => _WeatherPageState();
}

class _WeatherPageState extends State<WeatherPage> {
  Future<void> getWeather() async {
    await context.read<WeatherCubit>().fetchWeatherForecast();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SizedBox(
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Expanded(
                flex: 9,
                child: BlocBuilder<WeatherCubit, WeatherState>(
                    builder: (context, state) {
                  switch (state.weatherStatus) {
                    case WeatherStatus.initial:
                      return const WeatherEmpty();
                    case WeatherStatus.locationDisabled:
                      return const LocationDisabled();
                    case WeatherStatus.permissionDenied:
                      return const PermissionDenied();
                    case WeatherStatus.loading:
                      return const WeatherLoading();
                    case WeatherStatus.failure:
                      return const WeatherError();
                    case WeatherStatus.success:
                      return const WeatherPopulated();
                    default:
                      return const WeatherEmpty();
                  }
                }),
              ),
              Expanded(
                flex: 1,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      onPressed: getWeather,
                      child: const Text('GET WEATHER'),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
