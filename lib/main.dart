import 'package:flutter/material.dart';
import 'package:mentalhealthapp/view/bottomNavigator.dart';
import 'package:mentalhealthapp/view/home_screen.dart';
import 'package:mentalhealthapp/view/messagingScreen.dart';
import 'package:mentalhealthapp/view/splash_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: Scaffold(
          body: SplashScreen()
      )
    );
  }
}

