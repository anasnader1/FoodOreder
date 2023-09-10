import 'package:flutter/material.dart';
import 'package:foodorder/DishScreen.dart';
import 'package:foodorder/HomeScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: HomeScreen.routeName,
      routes: {
        HomeScreen.routeName:(context) => HomeScreen(),
        DishScreen.routeName:(context) => DishScreen()
      },

    );
  }
}
