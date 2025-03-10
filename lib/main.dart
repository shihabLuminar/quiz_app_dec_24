import 'package:flutter/material.dart';
import 'package:quiz_app_dec/view/splash_screen/splash_screen.dart';

void main(s) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: SplashScreen());
  }
}
