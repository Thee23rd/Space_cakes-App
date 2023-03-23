import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:space_cakes/Home/splash.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}
