import 'package:flutter/material.dart';
import 'screens/landing_screen.dart';

void main() => runApp(Clima());

class Clima extends StatelessWidget {
  const Clima({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(theme: ThemeData.dark(), home: LandingScreen());
  }
}
