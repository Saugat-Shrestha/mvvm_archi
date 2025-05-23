import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:mvvm_architecture/presentation/resources/routes_manager.dart';
import 'package:mvvm_architecture/presentation/resources/theme_manager.dart';

class MyApp extends StatefulWidget {
  MyApp._internal(); //private named constructor
  int appState = 0;

  static final MyApp instance =
      MyApp._internal(); //single instance -- singleton

  factory MyApp() => instance; //factory for the class instance

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      locale: context.locale,
      debugShowCheckedModeBanner: false,
      onGenerateRoute: Routes.generateRoute,
      initialRoute: RoutesName.splashRoute,
      theme: getApplicationTheme(),
    );
  }
}
