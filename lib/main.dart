import 'package:flutter/material.dart';
import 'package:sportnews/Mytheme_data.dart';
import 'package:sportnews/homeScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: Mytheme.lightTheme,
      routes: {
        homeScreen.routename:(content)=>homeScreen(),
      },
      initialRoute: homeScreen.routename,
    );
  }
}


