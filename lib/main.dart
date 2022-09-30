import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:efictec_srl/app/layouts/home_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Efictec S.R.L.',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: AnimatedSplashScreen(
        backgroundColor: Colors.black,
        splash: 'lib/assets/images/logo.png',
        nextScreen: const HomePage(),
      ),
    );
  }
}
