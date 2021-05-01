import 'package:flutter/material.dart';

import 'home_screen.dart';

void main() => runApp(BmiApp());


class BmiApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      
      title: "Bmi App",
    debugShowCheckedModeBanner: false,
    home: HomeScreen(),
    );
  }
}