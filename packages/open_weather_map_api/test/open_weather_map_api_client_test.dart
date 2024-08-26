import 'package:dio/dio.dart';
import 'package:mocktail/mocktail.dart';
import 'package:open_weather_map_api/open_weather_map_api.dart';
import 'package:test/test.dart';

class MockDio extends Mock implements Dio {}

class MockResponse extends Mock implements Response {}

void main() {
  const fakeApiKey = 'xxxxx';

  group('OpenWeatherMapApiClient', () {
    late Dio dio;
    late OpenWeatherMapApiClient apiClient;

    setUp(() {
      dio = MockDio();
      when(() => dio.interceptors).thenReturn(Interceptors());
      apiClient = OpenWeatherMapApiClient(apiKey: fakeApiKey, dio: dio);
    });

    group('constructor', () {
      test('does not require a Dio instance', () {
        expect(OpenWeatherMapApiClient(apiKey: fakeApiKey), isNotNull);
      });
    });

    group('getWeatherForecast', () {
      const latitude = 14.326664;
      const longitude = 120.939868;

      test('makes correct http request', () async {
        final response = MockResponse();
        when(() => response.statusCode).thenReturn(200);
        when(() => response.data).thenReturn('{}');
        when(() =>
                dio.get(any(), queryParameters: any(named: 'queryParameters')))
            .thenAnswer((_) async => response);

        try {
          await apiClient.getWeatherForecast(
              latitude: latitude, longitude: longitude);
        } catch (_) {}
        verify(
          () => dio.get('/forecast', queryParameters: {
            'lat': latitude,
            'lon': longitude,
            'units': 'metric',
          }),
        ).called(1);
      });
      test('throws WeatherForecastRequestFailure on non-200 response', () {
        final response = MockResponse();
        when(() => response.statusCode).thenReturn(400);
        when(() =>
                dio.get(any(), queryParameters: any(named: 'queryParameters')))
            .thenAnswer((_) async => response);
        expect(
          () async => apiClient.getWeatherForecast(
            latitude: latitude,
            longitude: longitude,
          ),
          throwsA(isA<WeatherForecastRequestFailure>()),
        );
      });
      test('throws WeatherForecastDeserializationFailure on null response', () {
        final response = MockResponse();
        when(() => response.statusCode).thenReturn(200);
        when(() => response.data).thenReturn({'err': 'some err'});
        when(() =>
                dio.get(any(), queryParameters: any(named: 'queryParameters')))
            .thenAnswer((_) async => response);
        expect(
          () async => apiClient.getWeatherForecast(
            latitude: latitude,
            longitude: longitude,
          ),
          throwsA(isA<WeatherForecastDeserializationFailure>()),
        );
      });
      test('returns WeatherForecastResult on valid response', () async {
        final response = MockResponse();
        when(() => response.statusCode).thenReturn(200);
        when(() => response.data).thenReturn({
          "cod": "200",
          "message": 0,
          "cnt": 40,
          "list": [
            {
              "dt": 1724652000,
              "main": {
                "temp": 27.45,
                "feels_like": 31.65,
                "temp_min": 27.45,
                "temp_max": 29.89,
                "pressure": 1006,
                "sea_level": 1006,
                "grnd_level": 996,
                "humidity": 87,
                "temp_kf": -2.44
              },
              "weather": [
                {
                  "id": 500,
                  "main": "Rain",
                  "description": "light rain",
                  "icon": "10d"
                }
              ],
              "clouds": {"all": 97},
              "wind": {"speed": 3.05, "deg": 275, "gust": 3.57},
              "visibility": 10000,
              "pop": 0.64,
              "rain": {"3h": 2},
              "sys": {"pod": "d"},
              "dt_txt": "2024-08-26 06:00:00"
            },
          ],
          "city": {
            "id": 1715430,
            "name": "Dasmariñas",
            "coord": {"lat": 14.3267, "lon": 120.9399},
            "country": "PH",
            "population": 441876,
            "timezone": 28800,
            "sunrise": 1724622244,
            "sunset": 1724667150
          }
        });
        when(() =>
                dio.get(any(), queryParameters: any(named: 'queryParameters')))
            .thenAnswer((_) async => response);
        final actual = await apiClient.getWeatherForecast(
          latitude: latitude,
          longitude: longitude,
        );
        expect(
            actual,
            isA<WeatherForecastResult>()
                .having((w) => w.list, 'list', hasLength(1))
                .having((w) => w.list[0].date, 'date', 1724652000)
                .having((w) => w.list[0].dateText, 'dateText',
                    '2024-08-26 06:00:00')
                .having((w) => w.list[0].main.temp, 'main.temp', 27.45)
                .having(
                    (w) => w.list[0].main.feelsLike, 'main.feelsLike', 31.65)
                .having((w) => w.list[0].main.humidity, 'main.humidity', 87)
                .having((w) => w.list[0].weather[0].id, 'main.weather.id', 500)
                .having((w) => w.list[0].weather[0].main, 'main.weather.main',
                    'Rain')
                .having((w) => w.list[0].weather[0].description,
                    'main.weather.description', 'light rain')
                .having((w) => w.list[0].weather[0].icon, 'main.weather.icon',
                    '10d')
                .having((w) => w.city.name, 'name', 'Dasmariñas')
                .having((w) => w.city.country, 'country', 'PH')
                .having((w) => w.city.sunrise, 'sunrise', 1724622244)
                .having((w) => w.city.sunset, 'sunset', 1724667150));
      });
    });
  });
}
