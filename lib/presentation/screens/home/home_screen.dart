import 'package:flutter/material.dart';
import 'package:islami_app/core/assets_manager.dart';
import 'package:islami_app/core/strings_manager.dart';
import 'package:islami_app/presentation/screens/home/tabs/hadith_tab/hadith_tab.dart';
import 'package:islami_app/presentation/screens/home/tabs/quran_tab/quran_tab.dart';
import 'package:islami_app/presentation/screens/home/tabs/radio_tab/radio_tab.dart';
import 'package:islami_app/presentation/screens/home/tabs/settings_tab/settings_tab.dart';
import 'package:islami_app/presentation/screens/home/tabs/sibha_tab/sibha_tab.dart';


class HomeScreen extends StatefulWidget {
   HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
   int selectedIndex = 0;

List<Widget> tabs = [
  QuranTab(),
  HadithTab(),
  SibhaTab(),
  RadioTab(),
  SettingsTab(),
];

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(AssestsManager.lightMainBg,fit: BoxFit.fill,width: double.infinity,height: double.infinity,),
        Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            title: Text(StringsManger.appTitle),
            centerTitle: true,
            titleTextStyle: TextStyle(fontSize: 30,fontWeight: FontWeight.w400,color: Color(0xFF242424)),  
          ),

       bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedIndex,
        onTap: (index){
          selectedIndex = index;
          setState(() {
            
          });

        },
        items: [
        BottomNavigationBarItem(icon:ImageIcon(AssetImage(AssestsManager.quranIcon)),label: StringsManger.quranLabel),
        BottomNavigationBarItem(icon:ImageIcon(AssetImage(AssestsManager.hadithIcon)),label: StringsManger.hadithLabel),
        BottomNavigationBarItem(icon:ImageIcon(AssetImage(AssestsManager.sebhaIcon)),label: StringsManger.sebhaLabel),
        BottomNavigationBarItem(icon:ImageIcon(AssetImage(AssestsManager.radioIcon)),label: StringsManger.radioLabel),
        BottomNavigationBarItem(icon: Icon(Icons.settings) , label: StringsManger.settingsLabel),
       ]), 

       body: tabs[selectedIndex],

        ),
      ],
    );
  }
}