import 'package:flutter/material.dart';
import 'package:greengrocer/src.dart/pages/auth/sign_in_screen.dart';
import 'package:greengrocer/src.dart/pages/base/splash/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Greengrocer',
        theme: ThemeData(
          primarySwatch: Colors.green,
          scaffoldBackgroundColor: Colors.white.withAlpha(190),
        ),
        debugShowCheckedModeBanner: false,
        home: const SplashScreen());
  }
}
