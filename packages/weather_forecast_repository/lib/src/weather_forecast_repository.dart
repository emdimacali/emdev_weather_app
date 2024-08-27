import 'package:open_weather_map_api/open_weather_map_api.dart';
import 'package:weather_forecast_repository/src/models/models.dart';

class WeatherForecastRepository {
  WeatherForecastRepository({
    OpenWeatherMapApiClient? weatherApiClient,
    required String apiKey,
  }) : _weatherApiClient =
            weatherApiClient ?? OpenWeatherMapApiClient(apiKey: apiKey);

  final OpenWeatherMapApiClient _weatherApiClient;

  Future<Weather> getWeatherForecast(
      {required double latitude, required double longitude}) async {
    final weatherForecast = await _weatherApiClient.getWeatherForecast(
      latitude: latitude,
      longitude: longitude,
    );

    final list = weatherForecast.list;

    // Traverse each item in list, need to check
    final forecast = list.map((wf) {
      final weatherInfo = WeatherInfo((b) => b
        ..date =
            DateTime.fromMillisecondsSinceEpoch(wf.date * 1000, isUtc: true)
        ..temp = wf.main.temp
        ..feelsLike = wf.main.feelsLike
        ..humidity = wf.main.humidity
        ..weatherDescription = wf.weather[0].description
        ..weatherCondition =
            WeatherCondition.valueOf(wf.weather[0].main.toLowerCase()));

      return weatherInfo;
    });

    final weather = Weather((b) => b
      ..city = weatherForecast.city.name
      ..country = weatherForecast.city.country
      ..sunrise = weatherForecast.city.sunrise
      ..sunset = weatherForecast.city.sunset
      ..forecast.addAll(forecast));

    return weather;
  }
}
