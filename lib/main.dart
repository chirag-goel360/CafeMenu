import 'package:flutter/material.dart';
import 'Widgets/SplashScreen.dart';

void main(){
  runApp(
    MyApp(),
    );
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Coffee Shop',
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}