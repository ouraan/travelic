import 'package:flutter/material.dart';
import 'package:travelic/components.dart';
import 'package:travelic/screens/Main.dart';
import 'package:travelic/screens/Splash.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Travelic',
      theme: ThemeData(
        primaryColor: brown_light,
        textTheme: Theme.of(context).textTheme.apply(bodyColor: dark),
      ),
      home: Splash(),
    );
  }
}
