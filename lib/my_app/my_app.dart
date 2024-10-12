import 'package:flutter/material.dart';
import 'package:islami_app/config/theme/my_theme.dart';
import 'package:islami_app/core/routes_manager.dart';
import 'package:islami_app/presentation/screens/home/home_screen.dart';
import 'package:islami_app/presentation/screens/splash/splash_screen.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: MyTheme.LightTheme,
      themeMode: ThemeMode.light,

debugShowCheckedModeBanner: false,
      routes: {
        RouteManager.splashRoute : (context) => SplashScreen(),
        RouteManager.homeRoute : (context) => HomeScreen(),
      },
      initialRoute: RouteManager.splashRoute,
     
    );
  }
}