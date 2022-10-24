import 'package:efictec_srl/app/layouts/desktop_layout.dart';
import 'package:efictec_srl/app/layouts/mobile_layout.dart';
import 'package:efictec_srl/app/layouts/tablet_layout.dart';
import 'package:efictec_srl/app/shared/responsive.dart';
import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';

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
        nextScreen: const Responsive(
          mobileScaffold: MobileLayout(),
          tabletScaffold: TabletLayout(),
          desktopScaffold: DesktopLayout(),
        ),
      ),
    );
  }
}
