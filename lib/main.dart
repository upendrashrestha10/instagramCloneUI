import 'package:flutter/material.dart';
import 'package:instaclone/screens/splash_scrren.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Instagram clone',
      theme: ThemeData.dark(),
      home: SplashScrren()
    );
  }
}

