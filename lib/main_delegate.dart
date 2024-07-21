import 'package:flutter/material.dart';
import 'package:my_leveling/screens/landing_screen/landing_screen.dart';

mainDelegate() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: LandingScreen(),
    );
  }
}
