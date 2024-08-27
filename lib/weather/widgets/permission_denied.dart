import 'package:flutter/material.dart';

class PermissionDenied extends StatelessWidget {
  const PermissionDenied({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(20.0),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.location_off,
              size: 40,
            ),
            SizedBox(height: 20),
            Text(
              'Please enable permission to access the location.',
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
