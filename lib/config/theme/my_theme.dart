import 'package:flutter/material.dart';
import 'package:islami_app/core/colors_manager.dart';

class MyTheme{

static ThemeData LightTheme = ThemeData(

        appBarTheme: AppBarTheme(
          backgroundColor: Colors.transparent,
          centerTitle: true, 
          elevation: 0,
          toolbarTextStyle: TextStyle(fontSize: 30,fontWeight: FontWeight.w400,color: Colors.black),
        ),
        scaffoldBackgroundColor: Colors.transparent,
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
          backgroundColor: ColorsManager.goldColor,
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.white,
          selectedIconTheme: IconThemeData(
            size: 36,
          ),
          showSelectedLabels: true,
          showUnselectedLabels: false, 
          type: BottomNavigationBarType.fixed,

        )
        

      );


}