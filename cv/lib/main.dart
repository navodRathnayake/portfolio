import 'package:cv/Pages/MyHomePage.dart';
import 'package:flutter/material.dart';
import 'dart:ui';
import 'ulits/const.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenWidth = window.physicalSize.width;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'NavodRathnayakeCV',
      theme: ThemeData(
          textTheme: screenWidth < 750 ? TEXT_THEME_SMALL : TEXT_THEME_DEFAULT,
          fontFamily: "Ubuntu"),
      darkTheme: ThemeData.dark(),
      themeMode: ThemeMode.light,
      home: const MyHomePage(),
    );
  }
}
