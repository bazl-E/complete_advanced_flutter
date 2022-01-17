import 'package:advanced_flutter/precentation/resources/theme_manager.dart';

import 'package:flutter/material.dart';

class MyApp extends StatefulWidget {
  // MyApp({Key? key}) : super(key: key); //default constructor
  MyApp._initernal(); //private named constructor
  static final MyApp instance =
      MyApp._initernal(); //single instance --single ton
  factory MyApp() => instance; //factory for the class instance

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: getApplicationTheme(),
    );
  }
}
