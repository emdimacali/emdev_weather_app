import 'package:mocktail/mocktail.dart';
import 'package:test/test.dart';
import 'package:open_weather_map_api/open_weather_map_api.dart'
    as open_weather_map_api;
import 'package:weather_forecast_repository/weather_forecast_repository.dart';

class MockOpenWeatherMapApiClient extends Mock
    implements open_weather_map_api.OpenWeatherMapApiClient {}

void main() {
  group('WeatherForecastRepository', () {
    late open_weather_map_api.OpenWeatherMapApiClient weatherApiClient;
    late WeatherForecastRepository weatherForecastRepository;

    setUp(() {
      weatherApiClient = MockOpenWeatherMapApiClient();
      weatherForecastRepository = WeatherForecastRepository(
        weatherApiClient: weatherApiClient,
        apiKey: 'xxxx',
      );
    });

    group('constructor', () {
      test('instantiates internal weather api client when not injected', () {
        expect(
            WeatherForecastRepository(
              apiKey: 'xxxx',
            ),
            isNotNull);
      });
    });
  });
}
