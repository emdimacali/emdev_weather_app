import 'package:open_weather_map_api/open_weather_map_api.dart';
import 'package:test/test.dart';

void main() {
  group('Weather Forecast Result', () {
    group('fromMap', () {
      test('returns correct WeatherForecastResult object', () {
        expect(
            WeatherForecastResult.fromJson(<String, dynamic>{
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
            }),
            isA<WeatherForecastResult>());
      });
    });
  });
}
