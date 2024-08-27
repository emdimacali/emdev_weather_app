import 'package:emdev_weather_app/utils/date.dart';
import 'package:emdev_weather_app/weather/cubit/weather_cubit.dart';
import 'package:emdev_weather_app/weather/cubit/weather_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class WeatherPopulated extends StatelessWidget {
  const WeatherPopulated({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(2),
      child: BlocBuilder<WeatherCubit, WeatherState>(
        builder: (context, state) {
          if (state.weatherStatus == WeatherStatus.success) {
            final weather = state.weather!;
            final city = weather.city;
            final country = weather.country;
            final sunrise = getTime(weather.sunrise);
            final sunset = getTime(weather.sunset);
            final forecast = weather.forecast;
            final current = forecast[0];

            return Column(
              children: [
                // Current Weather Info Card
                Card(
                  child: Padding(
                    padding: const EdgeInsets.all(14.0),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Text(
                              '$city, $country',
                              style: const TextStyle(
                                fontSize: 14,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  '${current.temp}°',
                                  style: const TextStyle(
                                    fontSize: 45,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(current.weatherCondition.toString()),
                                Text(current.weatherDescription),
                              ],
                            ),
                            const SizedBox(width: 20),
                            const Icon(
                              Icons.wb_sunny,
                              color: Colors.yellow,
                            ),
                            Text(sunrise),
                            const SizedBox(width: 20),
                            const Icon(
                              Icons.wb_twilight,
                              color: Colors.orange,
                            ),
                            Text(sunset),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Column(
                              children: [
                                const Icon(Icons.device_thermostat),
                                const Text('Feels like'),
                                Text('${current.feelsLike}°'),
                              ],
                            ),
                            Column(
                              children: [
                                const Icon(Icons.water_drop),
                                const Text('Humidity'),
                                Text('${current.humidity}%'),
                              ],
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                // Upcoming forecasts in a List
                Card(
                  child: SizedBox(
                    height: MediaQuery.of(context).size.height * 0.5,
                    child: ListView.separated(
                        itemCount: weather.forecast.length - 1,
                        separatorBuilder: (context, index) => Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 8.0),
                              child: Divider(
                                color: Colors.grey.withOpacity(0.5),
                                thickness: 0.25,
                              ),
                            ),
                        itemBuilder: (context, index) {
                          final offsetIndex = index + 1;
                          final forecastItem = forecast[offsetIndex];

                          return ListTile(
                            contentPadding: const EdgeInsets.symmetric(
                                horizontal: 10.0, vertical: 8.0),
                            title: Row(
                              children: [
                                SizedBox(
                                  width: 100,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(getDateAndTime(forecastItem.date)),
                                      Text('${forecastItem.temp}°'),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  width: 100,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        children: [
                                          const Icon(Icons.water_drop),
                                          Text('H: ${forecastItem.humidity}%'),
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          const Icon(Icons.device_thermostat),
                                          Text('${forecastItem.feelsLike}°'),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  width: 100,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        forecastItem.weatherCondition
                                            .toString(),
                                      ),
                                      Text(
                                        forecastItem.weatherDescription,
                                        style: const TextStyle(
                                          fontSize: 10,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          );
                        }),
                  ),
                ),
              ],
            );
          }

          return const SizedBox();
        },
      ),
    );
  }
}
