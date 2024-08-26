import 'package:flutter/material.dart';
import 'package:open_weather_map_api/open_weather_map_api.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  late final OpenWeatherMapApiClient client;

  void _runOperation() async {
    final value = await client.getWeatherForecast(
        latitude: 14.326664, longitude: 120.939868);
    debugPrint('value: $value');
  }

  @override
  void initState() {
    super.initState();
    const openWeatherMapApiKey = String.fromEnvironment('OPEN_WEATHER_MAP_KEY');
    debugPrint('openWeatherMapApiKey $openWeatherMapApiKey');
    if (openWeatherMapApiKey.isEmpty) {
      throw AssertionError('OPEN_WEATHER_MAP_KEY is not set');
    }
    final owmc = OpenWeatherMapApiClient(apiKey: openWeatherMapApiKey);
    client = owmc;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Hello world',
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _runOperation,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
