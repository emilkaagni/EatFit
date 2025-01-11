import 'package:eat_fit/screen/home/diary_screen.dart';
import 'package:eat_fit/screen/home/home_screen.dart';
import 'package:eat_fit/screen/splash/welcome_screen.dart.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
            seedColor: const Color.fromARGB(255, 255, 255, 255)),
        useMaterial3: true,
      ),
      // home: const WelcomeScreen(),
      // home: const HomeScreen(),
      home: const DiaryScreen(),
    );
  }
}
