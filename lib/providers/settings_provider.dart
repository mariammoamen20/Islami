import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SettingsProvider extends ChangeNotifier{
  String currentLang = 'en';
  ThemeMode currentTheme = ThemeMode.light;

  void changeLang(String newLang) async{
    if(currentLang == newLang){
      return ;
    }
    final prefs = await SharedPreferences.getInstance();
    currentLang = newLang ;
    prefs.setString('language', newLang);
    notifyListeners();
  }
  void changeTheme(ThemeMode newTheme) async{
    if(currentTheme == newTheme){
      return ;
    }
    final prefs = await SharedPreferences.getInstance();
    currentTheme = newTheme;
    prefs.setString('theme', newTheme == ThemeMode.light ? 'light' : 'dark');
    notifyListeners();
  }
  String changeBackground(){
    return currentTheme == ThemeMode.dark ? 'assets/images/bg.png' : 'assets/images/light_bg.png' ;
  }
}