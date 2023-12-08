import 'package:flutter/material.dart';
import 'package:flutter_meditaion/view/home_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Meditation",
      theme: ThemeData.dark(),
      home: const HomeScreen(),
    );
  }
}
