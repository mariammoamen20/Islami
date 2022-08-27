import 'package:flutter/material.dart';

class SettingsProvider extends ChangeNotifier{
  String currentLang = 'en';
  ThemeMode currentTheme = ThemeMode.light;

  void changeLang(String newLang){
    if(currentLang == newLang){
      return ;
    }
    currentLang = newLang ;
    notifyListeners();
  }
  void changeTheme(ThemeMode newTheme){
    if(currentTheme == newTheme){
      return ;
    }
    currentTheme = newTheme;
    notifyListeners();
  }
  String changeBackground(){
    return currentTheme == ThemeMode.dark ? 'assets/images/bg.png' : 'assets/images/light_bg.png' ;
  }
}