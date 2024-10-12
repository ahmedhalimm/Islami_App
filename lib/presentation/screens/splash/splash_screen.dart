import 'package:flutter/material.dart';
import 'package:islami_app/core/assets_manager.dart';
import 'package:islami_app/core/routes_manager.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(
      Duration(seconds: 3),
      (){
        if(context.mounted){
          Navigator.pushReplacementNamed(context, RouteManager.homeRoute);
        } 
      }
      
      );
    return Scaffold(
      body: Image.asset(AssestsManager.lightSplash
      ,fit: BoxFit.fill,
      width: double.infinity,
      height: double.infinity,
      ),
    );
  }
}