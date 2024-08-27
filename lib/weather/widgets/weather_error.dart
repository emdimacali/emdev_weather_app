import 'package:flutter/material.dart';

class WeatherError extends StatelessWidget {
  const WeatherError({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(20.0),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.wifi_off,
              size: 40,
            ),
            SizedBox(height: 20),
            Text(
              'Something went wrong while getting the weather data. Please ensure you are connected to the internet.',
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
