import 'package:flutter/material.dart';

class WeatherEmpty extends StatelessWidget {
  const WeatherEmpty({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(20.0),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.emoji_emotions,
              size: 60,
              color: Colors.purple,
            ),
            SizedBox(height: 20),
            Text(
              'Please press the Get Weather button below to fetch weather related to your location.',
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
